Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFE35898B4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 09:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018839048B;
	Thu,  4 Aug 2022 07:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7419890474
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 07:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659599566; x=1691135566;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wk4q75T4A6ED65eP/j2JNEFl6gkP800wFRPozAlJi0U=;
 b=TYq5IrRiVgMDM4GzdCUeQDbA/1lQkgdQ+hUjGiA2d55GGq2aEmMqXpN8
 KvVsSmBalZizHI38xlTNLpcvdJM+TmqfTxkjcei1A3PxcU1dkRZHqSj+j
 dlXhK+id1rjujRuggi2qxiVQ9swCqXPMZjLb+nYVQADMyPuRB2uQpVc0/
 EVtnf4udWAcuwp1Hi+jnMKsbaYxYe1vBMU216Dn9JbqQu0vmhrwlWMqjt
 KL5JlJuOTnnr2nbLkJNdhTRC1lrjRa95NR+hKib4UGQEOyVNp8ELsth4a
 1HwlnA5OStxR5SWz8xKy5LHNlCbtCx8XRIekepCh5NidbbyKz0xpyFIUe g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="288625741"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="288625741"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 00:52:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="606665974"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 04 Aug 2022 00:52:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 00:52:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 00:52:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 00:52:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 00:52:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q6KFjohKzdCCbS+ZkXyh1w165JdSw8o6Zg610blCbcpcFRlg2Xm7wvc+sn/lKkifAAJHekWaJKX8Zcgw41H/L4o/56QjOWuHFopdejpb8qT7RPCp52YtsCUbizfCIKzrc0i1vyH5RYL1RqTLEVCflckG5pLMWmPMaCkvHaZRKDM3jIvyf3kT9pZmvqlJ/YSoLtryAbFyauu/VU+i27NTKsPTSXAjzu0wu9Fi/7faWxQm+Sy33Vrl8LxUrL7rM8KuPwaSX02UN4mxkFpyBV5E2Rz8cMd6uSHynAN4MgpUuGmLhrlukWt/+sOTjANBL+mPp0DBXmvbXgR6wtFx/uL6AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1nBBi6DB5BoIOs4RuUPtFNZxDDF0l5G2KLAyF9rps8U=;
 b=mpk/u361phlzY8swnbkd75NGO7rE3CXCLWfi7n9F7cABrrBwXqSRIPETQDGbEpdrsnl14jiLJjQGKZKEFwOp+yt8srtP23xBXta4SsiVppXw3xRIb41ikh0hbMMNVzMToFbtG7Gs6LABK14WftJUorzi8C8Cj3tgObni/QrsZZBkHkxekfvbgk9cbRsRMe6LGUBvL6fnbetThfcrLpDSS8AReKkkppDdmlNnqd+KEKu3RsvwlneiCJcMJ7RzSfdI39gMB/+8hAFZdO4AcLVQX9Gujzk1fZFBvA2/eOFgbQu1O0zOfdbV7aghByaylolTsyGUbAtmajivbDfVJTEGgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5248.namprd11.prod.outlook.com (2603:10b6:5:38b::7) by
 BY5PR11MB4290.namprd11.prod.outlook.com (2603:10b6:a03:1ca::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.14; Thu, 4 Aug
 2022 07:52:41 +0000
Received: from DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::ac0f:1148:6c40:f38b]) by DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::ac0f:1148:6c40:f38b%6]) with mapi id 15.20.5504.015; Thu, 4 Aug 2022
 07:52:41 +0000
From: "Tangudu, Tilak" <tilak.tangudu@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Srivatsa, Anusha"
 <anusha.srivatsa@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 4/8] drm/i915: sanitize dc state in rpm resume
Thread-Index: AQHYnOcGEydrTSQjyUqbLMz5hmir7K2dtp2AgAC9oDA=
Date: Thu, 4 Aug 2022 07:52:41 +0000
Message-ID: <DM4PR11MB5248C98EE8A4FD6AA3ED2D4EE29F9@DM4PR11MB5248.namprd11.prod.outlook.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-5-tilak.tangudu@intel.com>
 <Yurbd4DMH4bCRifh@intel.com>
In-Reply-To: <Yurbd4DMH4bCRifh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9969a3c3-9dec-41e9-32ec-08da75ee4ed7
x-ms-traffictypediagnostic: BY5PR11MB4290:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AHV0/+hauNS3KPFJV09lVyAhw5+IqMjkg3GhuQJBUZgRG4rLdmdFUUHcil9UaCHGhQIZIL39B0gwDf42Pik28QCT52fNgzXok4gBA+z3Eh4WLdslhz7b3VyKRI7oCFWCdXmRiQzSjYRY4UyUbcCyGPupmPLcOv4yPqXtvnQen4A0b3VYDg+yMAunf0D1VOSslM8BRRiYj7YMrwFLlBSXrQ/AXrrVaf6DeywEpWu2E3WwsrP0cyhXDA65i8RCwiun7SXiPr4YSKiGF96MZ5Y1xs6p40av7e84/7FhsWtlX7++tPe5FwkYzGkxrE2cZ4J7GckPyxgmgBDZ9ZGrDXurlD16JkARc5U+T+43mjDy3xPygbQjsyIarWqnFMy5ZPmMtQcwiKPvNnMY6lvxlm0M+cjoGrzqK2dhVYDKhcRWLt8MM6mVOQhG983oUN3hmsaquqFLSR72xLTz/luuCDWMfvvaUD2+orBp+DxHJIjcNshVEULDi1u0zkktfg73RzKwgCYclvHgnzW2sjWukHBQj+XCrYhVY04uwHuYrFkGtESW1tNhQfbbsoA30J9LhAxRWPOolVb9LYOf2P4dwvo0fDx7+B+KVmFaFNuhGoIPiJgRf+SHIc4aigxGr9TAuTkHE6oZUIGsTzkM2Fs4HSFKFelhREIh0WjCXFPQLHPpoQBRi5qUrgqjUbHuVz6oso4X/OidJQx+UTTN4IEIKXecrzYb+MoRl8XQPQ8miZXhxkle6IH3yvaYJYMcAyuWU+H/q6t/varqjS7msxJ0EK6fuc1qM2SYfoIcgRysNcx3rsxdvTDXROHKhmkRpygEyNxv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5248.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(366004)(39860400002)(136003)(396003)(41300700001)(7696005)(38100700002)(83380400001)(9686003)(6506007)(186003)(478600001)(26005)(122000001)(71200400001)(66476007)(66556008)(8676002)(66446008)(4326008)(6636002)(55016003)(2906002)(8936002)(316002)(52536014)(110136005)(54906003)(64756008)(33656002)(53546011)(82960400001)(76116006)(5660300002)(38070700005)(66946007)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ye9AaxmMGOCuHTHpMSHjS1rhqVXeEjBJCXB0UBb4+Jl2Y+dGZcguROn9BnaP?=
 =?us-ascii?Q?KQOu/6iGNPX+vcLSjHTpFvgwM37RW3/L7YGSjMtOC6XwNVYTrmtKk7ktUuh2?=
 =?us-ascii?Q?UBgrVioAdYKEwKkiY7V7//vhF+Q2nxAn6DakiGgckv2C3KwbMIzdswSdmXBP?=
 =?us-ascii?Q?C8gKVvaRVKs5w8J3qKHvyfnFKAbIgLt6M9AGdkqEAkF7aPnFXIpgMj5pKDR8?=
 =?us-ascii?Q?oyQdURcLkXTfUOJBPUAWsh9BU66fb+bO88HIVyBmUuSvP6yepGW1z00AGO8I?=
 =?us-ascii?Q?gWRezitL85Ph04pGAAPQWMEBFEqNLHDE6JFPVGsV49781mPsaoRqJBP1my60?=
 =?us-ascii?Q?BWft5oXXxNOzRQQEQN1I2ttPmXEadHQB2nP7hXnUC4Y041qMu/cfitJc9Edc?=
 =?us-ascii?Q?pNYBSBYDUxio8dj0L1MRuoy71iuRRf4lu4Rq7S/XPet5cCkjCdge0BN8ApKe?=
 =?us-ascii?Q?B08y4aHOC8wHHOqoS2mw1eCLeuXZWg+oSZt/M8Yyc2MY63gVTQKp5IoYxL2S?=
 =?us-ascii?Q?8ciHvb+hu5bYrMD6kJgrMwxc3pgb9AHpLrqte32DCkJvfa3NUv3EMwFdhaob?=
 =?us-ascii?Q?6gXeSMlOrYT4q55vegkauxXtR+qgE4Ovy1RI8Bb7C5zWS6+RtfctisqJRl1w?=
 =?us-ascii?Q?79+rZCbmUfkpl/scZYnVM1/oI0kexRQwk8wennT8a70zZr0vgGvd5GA9Vxcn?=
 =?us-ascii?Q?KIhkPeWogqnAjrBT8VcuH6W+uGCxpi5TqQyLTWurYbrOxW4k5Nh37JaoK8JK?=
 =?us-ascii?Q?V0csOVepK8xZWq+OM6YqF4qX/IbZqco0AkSWFQ860Qp6mUNAo96YhPH/cZxd?=
 =?us-ascii?Q?96s2ifDoUGuZ5ozuYB2nqk+VzxR2VM22+MRx8h7i05emf7WVIXspdTNwGAVt?=
 =?us-ascii?Q?T7ZSIR2XFjFgnozC0HGQFXG4+XoFgkA1B9Y8srglQHvVHDvyLIa9ZZGF+RYF?=
 =?us-ascii?Q?akQpPlMBPOxjPj/8d+LMYwYscgiM2E0FS4r61e9YvU0p99fve7JRF9dEQO46?=
 =?us-ascii?Q?La1RHoinUDbLQyjt3MR4bloSW8uTVSjGRpvRmbk0f6n0tuoDfqaQpUVDFlGg?=
 =?us-ascii?Q?LNevWIOtceeFIfEuyDuInQ6R9r8smRa1RBb1KCk9/6q7GyohPUQ0YNnLywPr?=
 =?us-ascii?Q?Pi2OsC5afm0SQxNZOYS2aEYJA8T3I/WibUHa+sCvBcsClveDNJGkjOXpoR85?=
 =?us-ascii?Q?TDjSBKIqXWvlnM1+S+HpsO2CmXzBA60UAPUfaLa/qciGo8NEh/lcib/p45UC?=
 =?us-ascii?Q?TluNnyFZMIAzFoXzwfHYE/huiQXGr0N4AnmrURUH0je/+VWK4zWr5wTzCsAu?=
 =?us-ascii?Q?EbjEDzzy/kFje74Ugi+xo3PhGfu/6a4U5ppuEvRlNdrBgr2xVx7BZKc2vrsV?=
 =?us-ascii?Q?+1BlVk+ErAIusO8OQKUjVZSCBkK9hIssSA1k81YQr4kYX8e9B7sNaCL1wD+z?=
 =?us-ascii?Q?/Buj5hDSDYVtMy7i9LIgkwrOrUQfMo8bOrKc962NuPdBBwvGYe4EYNVzo9yC?=
 =?us-ascii?Q?UWD4DUflLsSbKQ5Rh0vFZWe6F5ragE8LAYuhkWj1O5WsvryOgyHgjgxJ2JHd?=
 =?us-ascii?Q?B3z8tQJsE8ldAg6o52GzwCGh5pa0nBaP3jQL3oQf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5248.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9969a3c3-9dec-41e9-32ec-08da75ee4ed7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 07:52:41.1270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1llxwq0rvPN0NQp5tRQj7KOnn1Jgikm52hNRT79i1F+y0pAftNEG0P85Vr26hLUmuZtTcETsoCOwdBF0Fqw1Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4290
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915: sanitize dc state in rpm
 resume
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Thursday, August 4, 2022 2:03 AM
> To: Tangudu, Tilak <tilak.tangudu@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Deak, Imre <imre.deak@intel.com>
> Cc: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>;
> Nikula, Jani <jani.nikula@intel.com>; Gupta, saurabhg
> <saurabhg.gupta@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
> Deak, Imre <imre.deak@intel.com>; Iddamsetty, Aravind
> <aravind.iddamsetty@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 4/8] drm/i915: sanitize dc state in rpm resume
>=20
> On Thu, Jul 21, 2022 at 03:29:51PM +0530, tilak.tangudu@intel.com wrote:
> > From: Tilak Tangudu <tilak.tangudu@intel.com>
> >
> > During runtime resume the display init sequence is called via
> > intel_display_power_resume() -> icl_display_core_init() which should
> > restore the display HW state. For restoring the DC9 enabled state in
> > DC_STATE_EN, gen9_sanitize_dc_state() should be called on the  runtime
> > resume path too to avoid the
> >
> > [  513.818190] i915 0000:03:00.0: [drm] *ERROR DC state mismatch (0x8
> > -> 0x0)*
> >
> > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>

This is suggested by Imre in the JIRA,
In next patches I will add the below=20
Suggested-by: Imre Deak <imre.deak@intel.com>
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 589af257edeb..799f84d3eed6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -2229,6 +2229,7 @@ void intel_display_power_suspend(struct
> > drm_i915_private *i915)  void intel_display_power_resume(struct
> > drm_i915_private *i915)  {
> >  	if (DISPLAY_VER(i915) >=3D 11) {
> > +		gen9_sanitize_dc_state(i915);
> >  		bxt_disable_dc9(i915);
> >  		icl_display_core_init(i915, true);
> >  		if (intel_dmc_has_payload(i915)) {
> > --
> > 2.25.1
> >
