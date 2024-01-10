Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0699B8297C7
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 11:42:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C64B10E585;
	Wed, 10 Jan 2024 10:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA5DA10E585
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 10:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704883350; x=1736419350;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/sTvHgy8eO050mEpAcVeheQsFTwaGiDxVQkvt2njm3c=;
 b=gJ1C8eXp2phaawPaNo78n/1FqZ/Qf1QMzfcLwqFcEXxhKuvyhUxveixc
 p60bqADTDAvub+qsWWm3d3XDfRFPN6EDBWjKgV9PW+CEUBc3uVnOIYohk
 xq82iMXT60lVBlvUUi3YDBv8Kq35HA0g6IqXlthREBG/m0OXBs8dZyd6O
 bjDYxUUjT3LCAz2WmdUvuZeRoWrxUHCJlJInKhe1zWf6ONrTGJk8qAnfm
 FHqXGxtY9ZdZzLIcRe/YmEJSf6q7aLJzYzBx3wHy0AWNJNBjSAP7mLeUz
 qx9iFm6u5ibOaAqaOwJ24awDqIfg6g5vfUMBnI2Bm3NmlLzZM/AFwGKYY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="5845188"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; 
   d="scan'208";a="5845188"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 02:42:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="905487349"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="905487349"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 02:42:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 02:42:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 02:42:14 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 02:42:14 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 02:42:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gSVNzG/nFvwqBBAMrktuWYIqQR/8Vtwqfa8XINeEMbvGMTYODGPlSJnc+k8UYIjOZcrWJogxrX4nVep+2DFCoYR3cIrzGknkuC5x7TeUMGtzd+634ao/SNlV3XqYT6AMhyKGBntVkAzYHAJCtywUGfzJZu43Y9TT1Jnjt+f+DxxLcaBlJwq8wuqiiC+yNUyV07R4FhyHFd2LzL3umkLkndI33EpDQ409kfweLpixMJYDLWZr00+wWXKin137DyCdiEVOgw+PVI/ktL65zyChPP3h/G+fS3TOHXM7PztAAg+McxpMJD0MaZa6cCnvl6cBVXtAwl8Ma+FnHCoHIQlvCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bb38tMbwdl5DWM3s0ZF0UttRIsJnFHRkidN3AFJzbFM=;
 b=S3TzP7pIDix70BGPtHRGYiV0Wc/RudOgkfI/UU9OwaE4JY3ssUSISr/k6s5nNnolSqJWxUcoKd1E0cyDAehg3yzDLjEPAgkZ9WW9HUSQNjaWPdrOfz6bezBfpSB6zod3SEmOE1CcbyYYE/qt1oAp748nzJcm1KJHng9gA1HgGKj7m4JlzJkjpn18mr2NbDd58pJLLJa0490u2QSKpDUqpdildmGkRiRsiXFibif+No6VFHKYi2OKjCkTprtHkMpHie2/tRxxBQ9r2YXWKn+DJWl0OyH/mjIxbG+PSQApi1nwQQZdHMtlnHYu8FxRH8ntq8W7neeLUF7e+lS7/bSZwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Wed, 10 Jan
 2024 10:42:12 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7181.015; Wed, 10 Jan 2024
 10:42:12 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Topic: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Index: AQHaPiWugxUDmfbxeEuHGhQ3RnYr6bDP8XUAgADan0CAAHPqgIABpuoQ
Date: Wed, 10 Jan 2024 10:42:11 +0000
Message-ID: <IA0PR11MB7307936DD0A028D49511537ABA692@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
 <875y04x88t.fsf@intel.com>
 <IA0PR11MB730740C0117353DC60DAC4B4BA6A2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87zfxex3do.fsf@intel.com>
In-Reply-To: <87zfxex3do.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MW4PR11MB5776:EE_
x-ms-office365-filtering-correlation-id: 4f342aa8-21c0-46e0-f521-08dc11c8cd92
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wOptExGcIXmrrr9KRsxujUmu4XnGZgItnXAwK2JkQ29kzOt37D8SjwVnPEK1OQ+OVqkI+L4H5D2ZVW9FOGn2AM5WuxbW+CZbjCzS9qVNTw0AI2IgSM770Ae65ymthVDWWJD2UR3TKTdGXrxhcA4J8kj7lL3mErTCcEi5CJTTroIrTKak0YeRWenrzBTXZTMucDSk7e1/EvaGMHx9vd90j9hh1ZwK6XtTSPOJIovn16822PGWwiXnFfQwHpkGP2NctG4Vi1w3EPn/7/TeO0CsiFEie1tBbWbEQY/kZSTob6wEFPHUzEPUlLS+PMcemztalmyV6GqUvU2ped1vU55AUKngPmY9HT1DVsiqqasf9XDoNAZMe00pNCE1ag/ydOsgjgsA3Neox/BaZyizF6Ki4u/91E0QEV83ZtAGA2oiSVKQQfwcoAbclw7ChLmIiB9LlLeXhvuvWfTFCUkuE9qwjJLNlZq9BTP8Fs+rHOKnM2MuvvUZMmPYVZU4Qmum5slrk/5aM9ycqQ0IM7GYXlj3JsXi6heXvIUGFylSWRbSdLtn3cSjrIQTi6ArM9M2iQ4c33SeiF0/KcOXxjoY09SeSgc/wQyzOZLuV+TEr492tmtmuzTqm40PnhM8FeHQqffF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(376002)(346002)(136003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(26005)(9686003)(53546011)(478600001)(71200400001)(7696005)(6506007)(83380400001)(2906002)(38070700009)(64756008)(66446008)(41300700001)(6636002)(316002)(66476007)(66556008)(8676002)(110136005)(52536014)(76116006)(8936002)(66946007)(38100700002)(122000001)(82960400001)(33656002)(86362001)(5660300002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Bhx7qsUsnJH+gJcCYDUkBIkY03vun0/i3drZrEIbHs3eLtzVFgWHa77tRiO6?=
 =?us-ascii?Q?ITrM7Q5J1Y4bSzMtLSB5bDg+NYjuZZJK+tdvu7VYy3xeyEvkG2o1v9byUfoM?=
 =?us-ascii?Q?yRs+aI8rdKn40ZJoWwQt04lHeIs1BR6tvbv4UtwALG4YRBsSTIRF9P543Bf2?=
 =?us-ascii?Q?7z4zY15kOCp32ZznS69KALTG+0WN29JRJ1kytd/3DqTPtod4pWq1MIoVIowA?=
 =?us-ascii?Q?C/s9xKWgXe8lOFc4rSHI1oxvzgwsqAJTTbWS3OsWJTrPinNCFoDbGwwedsiD?=
 =?us-ascii?Q?j7hl0hDoUCSSjt688QZAj+XcIWy68eI4BjvOq5DXwSHqv+EQKeOCATIDg0Pn?=
 =?us-ascii?Q?xFmBu1iuqJnz5OdcF4mMnc0Jfr5LgWuB7qfa97t8TYIb5hsb8SMCXVoYCr16?=
 =?us-ascii?Q?5Urv1RLXRUGoQPDoBukeGGxxZNORALuj22Ct3zOUcnHX+8sHTXz1MOJAci3+?=
 =?us-ascii?Q?c8skTpMkRIh+8cbrw80b1lhZKCR5y2wpOfiQdj8j0VPypWd/HmOXKvF3JmhC?=
 =?us-ascii?Q?44WxDigCGgCtKRug+JtyN9y342OMNPJMObeTk7DiJbqL/Wye1i7QUKzcap9R?=
 =?us-ascii?Q?DUZDmd6noq6Dd6HQrWr7VosiHL1ePLOdNoSUPRjQ3n8MhKaKqOsBbiD9QDHI?=
 =?us-ascii?Q?cFEh0TmE0X1g29oUv1LfRVDGeSy7GO6GHhDeeT0PWpLqoEGXJ2W64ARIFxZn?=
 =?us-ascii?Q?nAKCy6J8y4z3B+d2GUDAOx/SlahgKpt8B/l8aCSxeefkZjLIgF+wnimOIPux?=
 =?us-ascii?Q?m2FfQm6tPfYPja2Wyti+HcdRYFuFXFcM9sJ0Xmg7egf7cDF6eBoltQHDtGRU?=
 =?us-ascii?Q?94nWke9WFNQe7S5sYD+0byo5rPZSMbuikH7OZLMFy1G5htTBrYr3uYWnlfQQ?=
 =?us-ascii?Q?+Ufga/o9JTSq7UVDwn0/mz9fG39R2oJhx0pTMnJkGL5Rkk0BMfI8EDrNi7Lt?=
 =?us-ascii?Q?rg8DpGRI+F4SssWFqP8W/isXUW1SIiMy4W87xjlbhfN7okisfWK3zcERKShw?=
 =?us-ascii?Q?mHJwnNopIGQw5cEDH80WbR+AiF2EGkYwZ8LRuS2VyZUbWDdS8pWUac8shXel?=
 =?us-ascii?Q?iy6lzhcIu0XEgDq1T8eXCB970Nm+TBdZ0GB6sS4ivF7wiHVmjRUW6m7mHoPf?=
 =?us-ascii?Q?R09tYjJCvytPQh4LrYfzJIK2VQMVNy6tpL2qIRs3GAEMnxI8ykPQmizRJiHe?=
 =?us-ascii?Q?oAVrMcVB9L5tKREh8DkPE/udnHiWhoE++yTIyW3+v6h5locOCzgwQQFCXODf?=
 =?us-ascii?Q?iuNgSIe9GwnKXyw0ND0jruWw5N/wIhfpePbCtVy5FRRdFlPb2PNE0/Zy9wOV?=
 =?us-ascii?Q?Rxy2iKBD6XopTBgRIrJkp2aIB84+D0HjCxU40nt+Jd0b0gFUspfMAmjir0A0?=
 =?us-ascii?Q?i8i3kOnvvuJdamiBlFJkRTh6oaVx9cdYw+hL50eRUSC3aEe9Y1SPNPigxHuP?=
 =?us-ascii?Q?CdLqN+6h0Kpv7MSPzq+rEZI2+p+/ogVezYpbiHCm0dV2Ug97Bk7cFhiU/5nZ?=
 =?us-ascii?Q?OyaSkK4ZJqyNmO/Sem+v68C1h29TiuamymtLULPl6yQ5qIRD3iE6AT49zdwc?=
 =?us-ascii?Q?5kxPiZhCDBjv4q5X4iOhDfZ5+pYI0ZtqGcN5qkua?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f342aa8-21c0-46e0-f521-08dc11c8cd92
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2024 10:42:11.9836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peTt6W1sO1DR/n4XZtsThf0faY/44VtjtlYrmR88fkeeLV2SEMTOIHmW1fWbmFZLDc8+wXD29N9ae6n9ch+nSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5776
X-OriginatorOrg: intel.com
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
> Sent: Tuesday, January 9, 2024 2:58 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org;
> Deak, Imre <imre.deak@intel.com>
> Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
>=20
> On Tue, 09 Jan 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Monday, January 8, 2024 7:01 PM
> >> To: Murthy, Arun R <arun.r.murthy@intel.com>;
> >> intel-gfx@lists.freedesktop.org; Deak, Imre <imre.deak@intel.com>
> >> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> >> Subject: Re: [PATCH] drm/i915/display/dp: 128/132b DP-capable with
> >> SST
> >>
> >> On Wed, 03 Jan 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> >> > With a value of '0' read from MSTM_CAP register MST to be enabled.
> >> > DP2.1 SCR updates the spec for 128/132b DP capable supporting only
> >> > one stream and not supporting single stream sideband MSG.
> >> > The underlying protocol will be MST to enable use of MTP.
> >> >
> >> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
> >> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > index 9ff0cbd9c0df..40d3280f8d98 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > @@ -4038,8 +4038,13 @@ intel_dp_configure_mst(struct intel_dp
> *intel_dp)
> >> >     if (!intel_dp_mst_source_support(intel_dp))
> >> >             return;
> >> >
> >> > -   intel_dp->is_mst =3D sink_can_mst &&
> >> > -           i915->display.params.enable_dp_mst;
> >> > +   /*
> >> > +    * Even if dpcd reg MSTM_CAP is 0, if the sink supports UHBR
> >> > + rates
> >> then
> >> > +    * DP2.1 can be enabled with underlying protocol using MST for M=
TP
> >> > +    */
> >> > +   intel_dp->is_mst =3D (sink_can_mst ||
> >> > +
> >> drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
> >> > +                       && i915->display.params.enable_dp_mst;
> >>
> >> We use drm_dp_is_uhbr_rate() in intel_dp_is_uhbr() to determine
> >> whether the link rate in the *crtc state* is uhbr, and by proxy
> >> whether the link in the *crtc
> >> state* is 128b/132b.
> >>
> > Yes! If the link rate in crtc_state is not uhbr then we dont enable 128=
/132b.
> Also the return from drm_dp_read_mst_cap() return 0 or 1 and if not mst t=
hen
> 128/132b is not enabled. We need to deviate here and a value of bit[0]=3D=
0,
> bit[1]=3D0 in MSTM_CAP register is 128/132b with SST. Hence this hack is =
added
> to see if the return from MSTM_CAP is 0x00 and if uhbr rates are supporte=
d
> then enable 128/132b.
>=20
> Per spec it depends on intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> DP_CAP_ANSI_128B132B, why not use that here too?
>=20
Done!

Thanks and Regards,
Arun R Murthy
-------------------
> >
> >> There, we've already decided to use uhbr and 128b/132b.
> >>
> >> This one here is different, and I think it's taking us to the wrong
> >> direction. For example, it should be possible to downgrade the link
> >> from uhbr to non-uhbr on link failures. We don't have that yet. But
> >> this makes untangling that even harder.
> >
> > Yes upon having the fallback, I think we will have to handle fallback i=
n this
> case separately. Change might be required in drm core,
> drm_dp_read_mst_cap() should consider the DP2.1 changes to accommodate
> this 0x00 value.
> >
> > Will be floating the fallback patches very soon.
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> >>
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> >
> >> >     drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
> >> >                                     intel_dp->is_mst);
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
