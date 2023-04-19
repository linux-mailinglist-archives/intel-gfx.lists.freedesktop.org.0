Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3843E6E7736
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 12:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60EC810E922;
	Wed, 19 Apr 2023 10:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8ECA10E928
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 10:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681898891; x=1713434891;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j8YVxt3ZBfiYPZrLtwsokIs6U6odEgherrsORdeyhPw=;
 b=ZNnbRLT0xFlkca03tBWm8ULmgM3T3az1yd9w+d5h5+4NOPNl4QB6ktR7
 bFKSqRmwzZREFZEqshlWmG/UnyPgQa+hhz/HsU4opnI2AvA2m1VKLqLge
 Tx/6NPXPMg+IWIw3PrkjZJXcfyQpP+SwzUaNnAWF32xSBV2lAqTgrsty1
 cPL7NFrs9961Urcu48N8Ei8YeNasnennVkNV3GPEEfJkH2TsKQg0o84xM
 hNt+04Al1TcZRAXVwb61BUIsA3eW/c4PJLanZL3JodbnIpdQ1rbd+Oto5
 dDLeBTRbNe1Bxr8cAmDdnJUSemsI7RSV+7dX+mXuBqlNMyfEIZa1BSTRp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="342890865"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="342890865"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 03:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="865760983"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="865760983"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 19 Apr 2023 03:07:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 03:07:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 03:07:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 03:07:49 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 03:07:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NcroQfZKbAqlFvumCUwqNC07xFyfTBgelnlrNkNY47JUu2h1HrNaqks9DHkKhKB1FkBGCAQHUVO7xaxWV643MX+oDkreS29W+yrgE0TZtjbcLvEg/4T2UHzeBymQzX0D0zvIWM39NWSZrsjJKC4EzdGf0bEEcQ3TaSZOzPjL1zZBSc75LXkEMYf7y+g2oxA5efbYntVKQBsPBg1RBXUA8t6Kx49qYcnXrJAgZpgrGpLqqcFBbD+I5MEo189BWDzlxQs5bF1Or9IJQTNVtOChLffprzzCMhQtF4hepZk/0BSC0Ht5VDr5SvW7IbnCkny/RMRt0ipASTuok6k8VEERog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ibefl1p3yKk5ENqMQG1Wc5kUAsjsqYP3a21QNXk3ts8=;
 b=PCn/vLVbWlmW8+jv/XxZeS0piKg1GAQuDyscK6vQhImZ98SP7iUvv6q3lxEk7jJaJGLyG6bojcOXnGhlokCKggEpCaLB+zZ+m8GX1H4aaz5LiqbUaaaSoKlKtaVVpWEiNM15VtM8MoC5NYFSChGIQxSuENqQwQzrpn5pTm6z9L2b2brNAO1TvkESCmMLC2DrvdZhVbxTlZGLM2KSq6VZcm/41sHthfGd0uetzWMULweLQ2HGNQXJ2bA2A9DHWWqppScc55Bna7Hc9kcokq9K+zhHXbH2ojJy6izW2zvWgEdRtyPP+3YztgTRkabbwYVEipYh1KMqdWccld7R9Zme1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CO1PR11MB5124.namprd11.prod.outlook.com (2603:10b6:303:92::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.22; Wed, 19 Apr 2023 10:07:47 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148%6]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 10:07:47 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RESEND PATCHv2] drm/i915/display/dp: 128/132b LT requirement
Thread-Index: AQHZcmb0dbUWwi+4rEiFONwr1liLnq8yOWwAgAAMAjCAACAIgIAAAcpQ
Date: Wed, 19 Apr 2023 10:07:46 +0000
Message-ID: <DM6PR11MB3177F829830F9B226D7D560BBA629@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230417100021.3205172-1-arun.r.murthy@intel.com>
 <20230419022522.3457924-1-arun.r.murthy@intel.com> <875y9s1gsl.fsf@intel.com>
 <DM6PR11MB31774133756416CC0B8D0F75BA629@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87v8hsyz4k.fsf@intel.com>
In-Reply-To: <87v8hsyz4k.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CO1PR11MB5124:EE_
x-ms-office365-filtering-correlation-id: ce12fee9-eb02-4248-14ff-08db40bdecce
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yrs+yUoB1O23leIq+lhjOZ21D497QdA0kw+TFD/T+7xiHf1WmwU0r+j+eCWwBZZJAAi+/E/ncv7bpqY2flhhQEFAE6QD/ru6cKMKSPdajZtCJ9Gw8E0mtJvzpI10UdZ3aaruFx0WOVy/29+L6uqxf9b7fdWFhtkWCdc41UrMqrSCFyoa/a5tB9jyc8d4QOTmxEfqBPWUi+MDtQAaFD+AG4+QBS7br8eqtwWTpOXADi8Apld6QucLHffyga/uXS+GNaHFY0Sgwb0G6nSwpTSy362iuM5RHxAROr8QbF7FRbWM9fPBuUeIzWGvfyJoNvQqUdj34CBCpddBVAw+Dt1FGRv8NvAr4jAJ1cdRcV+B285X+iUFrLyYOeQDLBoXRzzWN2wD7Zn77Xzg+IuEEURrA9iRcH6vSpeqnChU7upNduzYMKqWfkCjZzGzZDARvrxjVzGdZjNiQzzdid7AAxO/j/XWeDtFNPM87tf4Z8Gkgy2W8XPbsxrs4GHvey7TJuMvuYBmRyycuV6e2biLQp+GkWzusgas85ZENPPu9cnrhrdR7p7e/IxaR8WyEpZc8MwPBTnvJR11bga+fpYlP9IE0wVxr9ie+XkOS31E1ANd+vluvu3t317ix98Sg2Cdw2CBDpsMTaSxxk4WCA6VP3bavA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(136003)(39860400002)(366004)(376002)(451199021)(55016003)(76116006)(82960400001)(66946007)(66556008)(66476007)(66446008)(64756008)(4326008)(478600001)(110136005)(316002)(8936002)(8676002)(5660300002)(52536014)(41300700001)(122000001)(38100700002)(53546011)(186003)(9686003)(83380400001)(71200400001)(7696005)(6506007)(26005)(966005)(33656002)(86362001)(38070700005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q2aBfS+UMARY26qoL2JrYGMCbg/KuiaaX34ymbqNujDyzsrAeUof3q0/X9Lq?=
 =?us-ascii?Q?zOaNY3pQtKSRIz+cX9Hu051bzjm4V2o+D7RG7Jnrns6vJ76qu3QTOpDLn5ui?=
 =?us-ascii?Q?O4W2Qrz4MXochn85WAal/ui4HAx8n4v8VNAMLLi1T+BV78C0aaLYtIXzX7yZ?=
 =?us-ascii?Q?c1lph3TVC+gWB02jCaLULxqCs7w0Nmy9nrbAcoe3D3Qxp1M+0WlthQPPY8Xs?=
 =?us-ascii?Q?ijfteUvNo3l/V/33u9u6Iw/n/2SM8CjSxQHHyzvlHrYZwEEFFkw7dt5v8buz?=
 =?us-ascii?Q?+i2O07Y0oi8OH0delzDd7AAjb7KAYOnlhHqaQP0Uywmt02qTOhABf29x1wsO?=
 =?us-ascii?Q?5eH6mTWRx7w/JpGlGBcOGUKNFVoyEtIegFb67ovfd+G029VReb3z/L0R8X/2?=
 =?us-ascii?Q?N9PuNDSFRe4iEFLXD92qBjmvIDYXUa8604L8d8XdOU2pvpazR/LGj+URE8c/?=
 =?us-ascii?Q?3rh4SWIdzXI5ffFtIex5FmRhafciB+Gf3SeIt39dONfhUfJky3wUL6Yn5SBv?=
 =?us-ascii?Q?gLCDBo42aLUi965JANNwDHmwZRLzj39lOSudhNIwSuji82Vd2kjuIa7CRVWN?=
 =?us-ascii?Q?NEbOzFiIHq1/69qH6rSOr48XMs5w54NQEcqzENGRGJSaadl3WnRymPqtc9bB?=
 =?us-ascii?Q?jPI1ioOjg7E8Vs5BYSzEp2zF+OBFyoD33SHcavFp4evHAjHKFrb/OolnJNtm?=
 =?us-ascii?Q?+8zd5A3k8rgV8MNsU1iGWsbey0ydcyn2VJrPFfKALzgf5Eb3tsj2sd465jTK?=
 =?us-ascii?Q?g9b99ZpyBaE5Ge4hYYO1qCv860xoMNkc/z5IOhTpuWAUm4unTYExk+cICTgn?=
 =?us-ascii?Q?o6VfKi0W0kxkgGEXvzu3nRMrm6MWqp+J4uNu4DG7idl1SRWdPOqCXuipcYP6?=
 =?us-ascii?Q?rmaXNhHjmY0eseUn0WFeiFW+FLuR/7uiw4Jzjo/NWUomOY9CABydst9CKK+q?=
 =?us-ascii?Q?MgTSJkfwvVca+WvGmMO2J1vBZ1vf6MTPRbI7e8VDshE/qhfuEZihYBG/0ocB?=
 =?us-ascii?Q?MnTbuOLmBBHgqgqCy5R3nTVEw8nHGY/xbo892XSZ6H01dJuyLuHCUW0i2QW5?=
 =?us-ascii?Q?IyJEDTvdIAwYB/PTe3mSoUJlOxlTG92tl96vJFm2rNo4ueisUoY556st778R?=
 =?us-ascii?Q?ZONL3xc7T4X2DV/XWkV3UYjHjP8nTfg7tzTnSuItCcla5W2McNXB5fIeSBWB?=
 =?us-ascii?Q?aJOr7Q/ICQbfbCP4ptKMS9HHoTtY+9FE1ML4yif9g96YeGScpDnVBt9teVpp?=
 =?us-ascii?Q?ioSG1r6EZHYmjn0s+H9Aeazzmms/OY5ovln/iYEJQjKX+lZqF4VR3n9YXPs1?=
 =?us-ascii?Q?Ra3T22uMcIseJW9PGSKqLzl9Ptd9X92FelN4IkC7tm7td2OuRYcdhXlnQ16i?=
 =?us-ascii?Q?TifngvvGiR1mueZkEGTceKWvRv6Fmwkn8q1NGC4mzwvfsFxbrkuZa6SDofNB?=
 =?us-ascii?Q?gXUj0eBC0DFFeAtIKSiOhsh0/I1x4l3rH3ErPWJmkoiE6V2fDc+iObp2i9MU?=
 =?us-ascii?Q?XxNpkupr5mXZ9eMnGqZkDjmctXsk7ROTtQC1P0YU4GjeoJ7YnLfRcFPPAowT?=
 =?us-ascii?Q?7cDXJe5GFfNFfUhjJQAhY20bWbPY9hdTBJ90XNme?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce12fee9-eb02-4248-14ff-08db40bdecce
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2023 10:07:46.8882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1B72GVVrmlAqiudCJav/xxSj6NNkq15mNT9WMKd6qXVU0VrBiQN5uZtftHrAEXXVhqu2L8kPmtvEQ3Tz548vXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5124
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RESEND PATCHv2] drm/i915/display/dp: 128/132b LT
 requirement
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, April 19, 2023 3:26 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com
> Subject: RE: [RESEND PATCHv2] drm/i915/display/dp: 128/132b LT
> requirement
>=20
> On Wed, 19 Apr 2023, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Wednesday, April 19, 2023 12:48 PM
> >> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> >> Subject: Re: [RESEND PATCHv2] drm/i915/display/dp: 128/132b LT
> >> requirement
> >>
> >> On Wed, 19 Apr 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> >> > For 128b/132b LT prior to LT DPTX should set power state, DP
> >> > channel coding and then link rate.
> >> >
> >> > v2: added separate function to avoid code duplication(Jani N)
> >> >
> >> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >>
> >> RESEND for what reason?
> > Typo is sending V2 patch hence corrected and sent it again.
> >
> >>
> >> Two v2 and neither fixes
> >> https://lore.kernel.org/r/87o7nmergw.fsf@intel.com
> > This is pointing to the v1 patch.
> > V2 patch addressing review comments can be located @
> > https://lore.kernel.org/all/20230419022522.3457924-1-arun.r.murthy@int
> > el.com/
>=20
> Argh.
>=20
> RESEND means you're sending the exact same patch again. Hence *re-send*.
> That's what I thought. That's what everyone would think.
>=20
> It's even documented in submitting-patches.rst [1].
>=20
> ---
>=20
> There's still the question of whether we could just change the order for
> 8b/10b too [2]. On IRC, Ville thinks we could, "i don't think there is an=
y order
> specified. just use the same alwas imo".
>=20
Spec DP2.1 section 3.5.1.2 (for 8b/10b LT)
write the following Link Configuration parameters:
* LINK_BW_SET register (DPCD 00100h)
* LANE_COUNT_SET field in the LANE_COUNT_SET register (DPCD 00101h[4:0])
* DOWNSPREAD_CTRL register (DPCD 00107h)
* MAIN_LINK_CHANNEL_CODING_SET register (DPCD 00108h)

Whereas for 128b/132b section 3.5.2.16 says
Prior to link training, a DPTX should perform the following:
1 Verify that the SET_POWER_STATE field in the
SET_POWER_AND_SET_DP_PWR_VOLTAGE register is programmed to D0 normal
operation (DPCD 00600h[2:0] =3D 001b).
2 Write DPCD 00108h =3D 02h to select 128b/132b DP channel coding.
3 Program the target link rate and lane count by way of an AUX write transa=
ction to
DPCD 00100h and 00101h, respectively


Thanks and Regards,
Arun R Murthy
-------------------
>=20
> BR,
> Jani.
>=20
>=20
> [1] https://docs.kernel.org/process/submitting-patches.html#don-t-get-
> discouraged-or-impatient
> [2] https://lore.kernel.org/r/87r0siernf.fsf@intel.com
>=20
>=20
>=20
>=20
>=20
>=20
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> > ---
> >> >  .../drm/i915/display/intel_dp_link_training.c | 62
> >> > +++++++++++++------
> >> >  1 file changed, 44 insertions(+), 18 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> > index 6aa4ae5e7ebe..e5809cf7d0c4 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> > @@ -637,6 +637,37 @@ static bool
> >> intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
> >> >     return true;
> >> >  }
> >> >
> >> > +static void
> >> > +intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
> >> > +                           const struct intel_crtc_state *crtc_stat=
e) {
> >> > +   u8 link_config[2];
> >> > +
> >> > +   link_config[0] =3D crtc_state->vrr.flipline ?
> >> DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> >> > +   link_config[1] =3D intel_dp_is_uhbr(crtc_state) ?
> >> > +                    DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
> >> > +   drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
> >> link_config,
> >> > +2); }
> >> > +
> >> > +static void
> >> > +intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
> >> > +                       const struct intel_crtc_state *crtc_state,
> >> > +                       u8 link_bw, u8 rate_select) {
> >> > +   u8 link_config[2];
> >> > +
> >> > +   /* Write the link configuration data */
> >> > +   link_config[0] =3D link_bw;
> >> > +   link_config[1] =3D crtc_state->lane_count;
> >> > +   if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
> >> > +           link_config[1] |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
> >> > +   drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
> >> 2);
> >> > +   /* eDP 1.4 rate select method. */
> >> > +   if (!link_bw)
> >> > +           drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
> >> > +                             &rate_select, 1); }
> >> > +
> >> >  /*
> >> >   * Prepare link training by configuring the link parameters. On
> >> > DDI
> >> platforms
> >> >   * also enable the port here.
> >> > @@ -647,7 +678,6 @@ intel_dp_prepare_link_train(struct intel_dp
> >> > *intel_dp,  {
> >> >     struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->bas=
e;
> >> >     struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> >> > -   u8 link_config[2];
> >> >     u8 link_bw, rate_select;
> >> >
> >> >     if (intel_dp->prepare_link_retrain) @@ -686,23 +716,19 @@
> >> > intel_dp_prepare_link_train(struct intel_dp
> >> *intel_dp,
> >> >             drm_dbg_kms(&i915->drm,
> >> >                         "[ENCODER:%d:%s] Using LINK_RATE_SET value
> >> %02x\n",
> >> >                         encoder->base.base.id, encoder->base.name,
> >> rate_select);
> >> > -
> >> > -   /* Write the link configuration data */
> >> > -   link_config[0] =3D link_bw;
> >> > -   link_config[1] =3D crtc_state->lane_count;
> >> > -   if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
> >> > -           link_config[1] |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
> >> > -   drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
> >> 2);
> >> > -
> >> > -   /* eDP 1.4 rate select method. */
> >> > -   if (!link_bw)
> >> > -           drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
> >> > -                             &rate_select, 1);
> >> > -
> >> > -   link_config[0] =3D crtc_state->vrr.flipline ?
> >> DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> >> > -   link_config[1] =3D intel_dp_is_uhbr(crtc_state) ?
> >> > -           DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
> >> > -   drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
> >> link_config, 2);
> >> > +   if (intel_dp_is_uhbr(crtc_state)) {
> >> > +           /*
> >> > +            * Spec DP2.1 Section 3.5.2.16
> >> > +            * Prior to LT DPTX should set 128b/132b DP Channel
> >> > + coding
> >> and then set link rate
> >> > +            */
> >> > +           intel_dp_update_downspread_ctrl(intel_dp, crtc_state);
> >> > +           intel_dp_update_link_bw_set(intel_dp, crtc_state, link_b=
w,
> >> > +                                       rate_select);
> >> > +   } else {
> >> > +           intel_dp_update_link_bw_set(intel_dp, crtc_state, link_b=
w,
> >> > +                                       rate_select);
> >> > +           intel_dp_update_downspread_ctrl(intel_dp, crtc_state);
> >> > +   }
> >> >
> >> >     return true;
> >> >  }
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
