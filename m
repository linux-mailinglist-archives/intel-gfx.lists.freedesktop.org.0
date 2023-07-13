Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E82AD75230B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 15:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8863B10E6DF;
	Thu, 13 Jul 2023 13:10:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2E410E6CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 13:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689253802; x=1720789802;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r3FpDDz3TUc6ehHc6vR+7/qBHOtL8eRqKTKbPtlZR9g=;
 b=IJZk/khscxFPXqpQJDRIVG89NGVx5/a6dqOML7LFNBLysOWFVQKEbhlI
 K455CGU1RxSuW/jcNOgS+C30Yf89P4bqLNPYoezgNuGW5MvgDzvk7OI2g
 cqfLg30YzSrTapTe/hfttlzi/2K9wej/iI4yJTy2Xo1d2CHEqQyi295Dk
 DuRPyYSQL/LvR7HRHYlZ7AmozVo7tfEo3pvnGywhE3YgVCFj3UeUID1uR
 DJ+bs8eP00o7+zaPrZsRg71IOUfKkU/ysNx/0N9l5Ot9RmVHVNQYYAuuP
 EkXximldc+S7SI4m1cB1Vx9FTiPBmXVeobVCRZTorkgOwlT5aaThI2ah7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="345492265"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="345492265"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 06:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="1052605403"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="1052605403"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jul 2023 06:06:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 06:06:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 06:06:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 06:06:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 06:06:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HkSZt7dJcoP3xmaOYA22YhHZcsAO4TfiaM29rEsrzh67kzEFC4Yzu2BzrYEZCHQLgs0LYPmlhoXLnXl837kZ/N7FKlWbcKe5MF5MqUDiQc8lNj9dTLMsXP2kAqEcO68ApdxhQANPRF7UxkXikWej8lEnaCsemKyXgsqeLtMEIbaiifWeVGU/McUEL2HAbZ/OT9N0uWYtx/jPZxDvfARZWM2xlWbzi8tlSUwgDh5LWYtOVscEWOcW57mRprksyJ+3PRu8JaB48Phl0vXlvzVsuYD+xuhyCYQoBcjrEoUlf+iCJpZtT3qaNqPgz2BIGbcqoMkh2N5qDR8UPXNvy9VJQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wUKuf0q5RRpioyO6UxQ9rko4ocqacr3K6ck2HfJPEMI=;
 b=LZAoZf8D1XfNX/+J+/cShH0LC8KcEp2l7cUFjhBb9V8L/HVwgMPZRiNLUsZ3kfX71YvgdVxYAFgDEf6vn3Pf93QGU7PRaSOhyUcErb0onFRdubRc5YKD8NW+T9msqnnoyNxuS63Vdy4z1zuTfIciHRWnCvQo/QtfB1DoeR+y2x6dGltGeOXZFRy7iI0sLjz54bJL46k4apepL+HR9FM10/7ZbPaAauxFaWccQgnRfaVZ2RlYFs98rc41YSbehVJ7Dga/I7HKxB9vKkyPxrBYqN4rmMXWZ+ZHC89zf0+Ke3/LSEFK+aBGnh2D5k74YOw9fpwbNSjxrqR/9xOToHMwnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB7996.namprd11.prod.outlook.com (2603:10b6:806:2e3::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.26; Thu, 13 Jul
 2023 13:06:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6544.024; Thu, 13 Jul 2023
 13:06:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 3/6] drm/i915/vdsc: Add function to read any PPS
 register
Thread-Index: AQHZtVOfbq2PYOH8bEiUW1Z5BdLhSK+3pbuAgAAEp9A=
Date: Thu, 13 Jul 2023 13:06:14 +0000
Message-ID: <SN7PR11MB67508B01613E253111928FA5E337A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230713062924.2894736-1-suraj.kandpal@intel.com>
 <20230713062924.2894736-4-suraj.kandpal@intel.com> <87h6q8f062.fsf@intel.com>
In-Reply-To: <87h6q8f062.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB7996:EE_
x-ms-office365-filtering-correlation-id: 7baff773-b636-4d6d-9445-08db83a1f06a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tI/ZUY+gOwMrrBB6YNNcyQlHLf9NF32P8e/c/xqQGz+Zlo3ZYiiA3qOtq7OrUYiCi3URrbrER1UNBMf6OefAaklyZEMNNUXLYVtcoh71pPeAJovOA5gos3baKYf3Ea67HDTqjCV1cCZoPAHZxVD1D3Y6dSc2m31IPf5q1BbXHHvUfl+cFghShioFrhbTjucKgTHnYZHUGBYWagerQ9l9wGqyhqj+ds5cjjsd/K6RCSrdW/SArPG0GPi7ZBTMT0H79JwWkIFclry5JCfnc9Wl7uQGkkOE6kEM8QLh1k1q4ATjJsdpUo3TX19+EOisOq6kGUaKvB9TtGoG3+MwMOOG5VW/ne00S1/hOPJeUhhylHTlymbHbfdbq/CGdM9vfhmTLWpij8BgtCaBgiAL68mdcOyJhqCixpZ5VTg3411E3XeFlIXd1ByNIG5/BXgTsBiXNbiHVMiyzGb0BhOTFY6JOTZLFHi40j3TsiGvb38ACsRXe8aMqcruUCwT1TS4Euqg9d78IjdzV3CW2dugOPMHZYoqB/RTSos2DtOBvIBdsu2i0mmLrBgiawik+95YEZYKyoHVVzW+FTCKjN1Awv2QH7onLAMgIR0A1bDa44oj7IOwz4FRxu06x8amNBOpuZhk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(346002)(136003)(39860400002)(366004)(451199021)(8936002)(8676002)(5660300002)(186003)(52536014)(83380400001)(86362001)(26005)(6506007)(41300700001)(33656002)(7696005)(71200400001)(54906003)(316002)(9686003)(82960400001)(66476007)(2906002)(66946007)(66446008)(55016003)(66556008)(30864003)(64756008)(122000001)(76116006)(478600001)(4326008)(38070700005)(38100700002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g/onnZkXUfFIvUtov2k2AG6B1GLENNGPKUMHA9str9Bgoc6x6G0GSuAKGaEo?=
 =?us-ascii?Q?vvYffvhHVzQQvEdMQBRGaYj4OHQ+a0ZPv+vgO7CzqhlhHvBpOVnCkmWahZVv?=
 =?us-ascii?Q?0FB6fIxflKoNRYtR0C5JsF32ZrWVaL2mVP8Jydn2/JrB2cWE6aJZN8zyC1ew?=
 =?us-ascii?Q?qCHPsKTwin1/qIFw4+Zu9str7H7EKo7Rq4Zowqp6QpnC/PbFC3O1Qx9pGSl4?=
 =?us-ascii?Q?AkzOVmx1G0NxtyOJl1htp4TepjkEep0dBPCSVjaHrS63D7JgIOjjHu56+qzj?=
 =?us-ascii?Q?t0i5xbydnIy3KLhTrPaVq6EXf6nS5G10f4O4LpVBifzTBf09FFey7U/gplRF?=
 =?us-ascii?Q?hcw86FjD3wXesV2WkGD5aqyao7yvcBpk282JqbN8Yv5FU5sQKLgJs00tivrf?=
 =?us-ascii?Q?ZSCQghQSH+9td8a7KLWWjsujuQUXmxkLltglGR7h4mMZs619OGKv8MVNjSGW?=
 =?us-ascii?Q?eZv/4vCNNKKd9c83UEnDhbJd4jpZ/ULU8KQL5cLmiuY9od3wrkkebw3fczQe?=
 =?us-ascii?Q?l+BrM1Zp4StkbeFBwkqAXoA5p9GTIC/cm8O6ViZNCDLxkZceqMBITs+b7xTX?=
 =?us-ascii?Q?D2NixzNkzwF++RCVx0TmxLq+TSY0bYF3eLV1wljxW5wjPwGH9gw1rUdO9UFy?=
 =?us-ascii?Q?fvMU7jSicxjMZuKd4nC5d0tQoQMUTjwiREnaQ7VB9dIEUEST13+LQ1uEqJjM?=
 =?us-ascii?Q?wkD80daR5Bd0tIRd6V2O0fdqUFeYoMUpch2jjF5KPSZJVdR/GtQ6CSXaZMHV?=
 =?us-ascii?Q?vneZdRrS3nDs7wdxX9V87+2dZMU24QIDdn+IhItmwQR8qvcrEtvfu2paiUXG?=
 =?us-ascii?Q?yTQAqK6i7WsvbN8Sx000F5v+XK/kCXx93xI3gYwuUqpl7XRfVK+HtCd5bMEl?=
 =?us-ascii?Q?oksqSa8EHu9zLSyno/Typbp6Bgx577EIS2IHB/ZaXk/5DvuZr//1rjcDdStE?=
 =?us-ascii?Q?jY+4Y9fVeZ0caywXsvHqHjcVeTpC1xjsJ/SkMxBZAhmWK+bGKYOYCS932y7f?=
 =?us-ascii?Q?9EnWSeUyEeIs/uPNvcVuLAi46btYBQvsspb+IIfTgj0xaZcIZLVpBnZ/gwBJ?=
 =?us-ascii?Q?lmmYxS2ZoI4K3srak73fTd49GtrCTX48zDpDOnnW+A7zX8BZ66FuU1maB89M?=
 =?us-ascii?Q?ZHYNu3DPAn01+m9LR81wJlwWnLEOlYRIrClUWeT/CUL1aTwAUYuC8zbjxV2y?=
 =?us-ascii?Q?qRCwugRyxL5BWapvT2YhMthGbA/PEfE5EusmnEMVmi+h7WrPFSCsQiDVi6aJ?=
 =?us-ascii?Q?XUsyH+ZKjT29GUcVfOO0/rw3SRIs/3SkKIuO2fv30LZWIe2+kXz9uRFHmoZK?=
 =?us-ascii?Q?m042FYSq++ZmRJ40DsK6+X7fLqEZThGhOfd3kyjTHkpnxF7T/8gxByJk+0lY?=
 =?us-ascii?Q?rOfzImTt7mYnIkxX/sWG5KZr/c7zAtV+1bW6RvZoo7c//xByds/wM1dAfWGz?=
 =?us-ascii?Q?pVfv7y3JhatNF0m6pWZXcX+gUHKo9JZGBzqEahcFXNTP9q0W/lcq3bYv7Y7f?=
 =?us-ascii?Q?RnKYh1xXHH219JqROcAO76SXxUtJVRM97ioTlbON2oEk5mttXh27D8l1Jiny?=
 =?us-ascii?Q?ASttPJGbhIGuhyh0CXOBohfpLhwTbu5dQmn0n8W2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7baff773-b636-4d6d-9445-08db83a1f06a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2023 13:06:14.9504 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jHgrWWeCagNshN5jRLT3GnZbnjUeTENk7H6jppnVvi+yT6Ge78hmWsazDHem6T6eFEajuL0ftgVbRXao0i0w7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7996
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915/vdsc: Add function to read
 any PPS register
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

=20
> On Thu, 13 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Add function to read any PPS register based on the intel_dsc_pps enum
> > provided. Add a function which will call the new pps read function and
> > place it in crtc state. Only PPS0 and
> > PPS1 are readout the rest of the registers will be read in upcoming
> > patches.
> >
> > --v2
> > -Changes in read function as PPS enum is removed -Initialize pps_val
> > as 0 in pps_read func itself [Jani] -Create a function that gets the
> > required register and call that in the common read function [Jani]
> > -Move the drm_WARN_ON one abstraction layer above [Jani]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 276
> > +++++++++++++++++++---
> >  1 file changed, 242 insertions(+), 34 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index d48b8306bfc3..48273a3618c5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -303,6 +303,196 @@ int intel_dsc_get_num_vdsc_instances(const
> struct intel_crtc_state *crtc_state)
> >  	return num_vdsc_instances;
> >  }
> >
> > +static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state,=
 int
> pps,
> > +				  int dsc_eng_no, i915_reg_t *dsc_reg) {
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	enum pipe pipe =3D crtc->pipe;
> > +	bool pipe_dsc;
> > +
> > +	pipe_dsc =3D is_pipe_dsc(crtc, cpu_transcoder);
> > +
> > +	switch (pps) {
> > +	case 0:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_0;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_0;
> > +		}
> > +		break;
> > +	case 1:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_1;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_1;
> > +		}
> > +		break;
> > +	case 2:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_2;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_2;
> > +		}
> > +		break;
> > +	case 3:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_3;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_3;
> > +		}
> > +		break;
> > +	case 4:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_4;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_4;
> > +		}
> > +		break;
> > +	case 5:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_5;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_5;
> > +		}
> > +		break;
> > +	case 6:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_6;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_6;
> > +		}
> > +		break;
> > +	case 7:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_7;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_7;
> > +		}
> > +		break;
> > +	case 8:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_8;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_8;
> > +		}
> > +		break;
> > +	case 9:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_9;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_9;
> > +		}
> > +		break;
> > +	case 10:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_10;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_10;
> > +		}
> > +		break;
> > +	case 16:
> > +		if (pipe_dsc) {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe);
> > +			else
> > +				*dsc_reg =3D
> ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe);
> > +		} else {
> > +			if (dsc_eng_no =3D=3D 2)
> > +				*dsc_reg =3D
> DSCA_PICTURE_PARAMETER_SET_16;
> > +			else
> > +				*dsc_reg =3D
> DSCC_PICTURE_PARAMETER_SET_16;
> > +		}
> > +		break;
> > +	/*
> > +	 * Since PPS_17 and PPS_18 were introduced from MTL dsc check
> > +	 * need not be done
> > +	 */
> > +	case 17:
> > +		if (dsc_eng_no =3D=3D 2)
> > +			*dsc_reg =3D
> MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe);
> > +		else
> > +			*dsc_reg =3D
> MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe);
> > +		break;
> > +	case 18:
> > +		if (dsc_eng_no =3D=3D 2)
> > +			*dsc_reg =3D
> MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe);
> > +		else
> > +			*dsc_reg =3D
> MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe);
> > +		break;
> > +	default:
> > +		drm_err(&i915->drm, "PPS register does not exist\n");
> > +		break;
> > +	}
> > +}
> > +
> >  static void intel_dsc_pps_configure(const struct intel_crtc_state
> > *crtc_state)  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -930,16 +1120,64 @@ void intel_dsc_disable(const struct
> intel_crtc_state *old_crtc_state)
> >  	}
> >  }
> >
> > +static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state=
,
> > +				   int pps, u32 *pps_val)
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	int num_vdsc_instances =3D
> intel_dsc_get_num_vdsc_instances(crtc_state);
> > +	i915_reg_t dsc_reg;
> > +	u32 pps_temp;
> > +
> > +	*pps_val =3D 0;
> > +
> > +	intel_dsc_get_pps_reg(crtc_state, pps, 0, &dsc_reg);
> > +	*pps_val =3D intel_de_read(i915, dsc_reg);
> > +	if (num_vdsc_instances > 1) {
>=20
> Btw going from (crtc_state->dsc.dsc_split) to if (num_vdsc_instances >
> 1) should also be a separate change, instead of baked into this one.
>=20

Ohkay will create a new patch after this one that goes from using crtc_stat=
e->dsc.dsc_split
to num_vdsc_instances > 1

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
>=20
>=20
> > +		intel_dsc_get_pps_reg(crtc_state, pps, 2, &dsc_reg);
> > +		pps_temp =3D intel_de_read(i915, dsc_reg);
> > +		if (*pps_val !=3D pps_temp)
> > +			return true;
> > +	}
> > +	return false;
> > +}
> > +
> > +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state
> *crtc_state,
> > +					      int pps, u32 *pps_val)
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	bool is_dsc_diff;
> > +
> > +	is_dsc_diff =3D intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> > +	drm_WARN_ON(&i915->drm, is_dsc_diff); }
> > +
> > +static void intel_dsc_get_pps_config(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> > +	u32 pps_temp1, pps_temp2;
> > +
> > +	/* Readout PPS_0 and PPS_1 registers */
> > +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> > +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
> > +
> > +	vdsc_cfg->bits_per_pixel =3D pps_temp2;
> > +
> > +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> > +		vdsc_cfg->bits_per_pixel >>=3D 1;
> > +
> > +	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4; }
> > +
> >  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > -	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > -	enum pipe pipe =3D crtc->pipe;
> >  	enum intel_display_power_domain power_domain;
> >  	intel_wakeref_t wakeref;
> > -	u32 dss_ctl1, dss_ctl2, pps0 =3D 0, pps1 =3D 0, pps_temp0 =3D 0, pps_=
temp1
> =3D 1;
> > +	u32 dss_ctl1, dss_ctl2;
> >
> >  	if (!intel_dsc_source_support(crtc_state))
> >  		return;
> > @@ -960,37 +1198,7 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)
> >  	crtc_state->dsc.dsc_split =3D (dss_ctl2 &
> RIGHT_BRANCH_VDSC_ENABLE) &&
> >  		(dss_ctl1 & JOINER_ENABLE);
> >
> > -	/* FIXME: add more state readout as needed */
> > -
> > -	/* PPS0 & PPS1 */
> > -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> > -		pps1 =3D intel_de_read(dev_priv,
> DSCA_PICTURE_PARAMETER_SET_1);
> > -		if (crtc_state->dsc.dsc_split) {
> > -			pps_temp1 =3D intel_de_read(dev_priv,
> DSCC_PICTURE_PARAMETER_SET_1);
> > -			drm_WARN_ON(&dev_priv->drm, pps1 !=3D
> pps_temp1);
> > -		}
> > -
> > -	} else {
> > -		pps0 =3D intel_de_read(dev_priv,
> > -
> ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> > -		pps1 =3D intel_de_read(dev_priv,
> > -
> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> > -		if (crtc_state->dsc.dsc_split) {
> > -			pps_temp0 =3D intel_de_read(dev_priv,
> > -
> ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> > -			pps_temp1 =3D intel_de_read(dev_priv,
> > -
> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> > -			drm_WARN_ON(&dev_priv->drm, pps0 !=3D
> pps_temp0);
> > -			drm_WARN_ON(&dev_priv->drm, pps1 !=3D
> pps_temp1);
> > -		}
> > -	}
> > -
> > -	vdsc_cfg->bits_per_pixel =3D pps1;
> > -
> > -	if (pps0 & DSC_NATIVE_420_ENABLE)
> > -		vdsc_cfg->bits_per_pixel >>=3D 1;
> > -
> > -	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> > +	intel_dsc_get_pps_config(crtc_state);
> >  out:
> >  	intel_display_power_put(dev_priv, power_domain, wakeref);  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
