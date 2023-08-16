Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E1177DD63
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 11:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B326710E314;
	Wed, 16 Aug 2023 09:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1ED510E314
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692178593; x=1723714593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FVuHzd8vzDRK1PFSVEvjOlp+WZFe8kzlKVq1HjL2XOc=;
 b=JbTfEg+lXACsQyhbx663SxYZm6jjgpLQlTOJm1Uh7gDRgUPJsmLWgkdh
 m380rfDZNlmCCDCVbd9yajfy/2Bv1dnvUnuIamb3r+ShRJF/8A/0Cg6DA
 IsU78EistIFX2uVtRp0k5EmN/El1UNJnl385l9EFua5wEoMfYi5qHMjEH
 DWvWmc9peEunubhQIWIf9XP++QfErCAMPSCAv4nzJhhrEsOFTBkuCvmMu
 //+EKLEGR/VRmjPgWMVSNNUM+Qb+zLnoVFc0+dk/Q7UYkdFbRYI1QykJ/
 JYQC5kKmDjx/0TPndumqhfUnjOWEzJlMZoGtR4i3H5O58o1PyYs0z47ow g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372489095"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="372489095"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:36:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="848413946"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="848413946"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 16 Aug 2023 02:36:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 02:36:08 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 02:36:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 02:36:08 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 02:36:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TYdYRWppmD5dbeLfdS/m2z8vEYKMcLMf5npsXigjcE0UH47R6E7bWn+0hO+WQsQxJLW5EF6QS6eeTmfLcjU5H8wyRuVd8R6zP1yh9+ayEVi0Zd+abf31CgE5ei5wAryV66I4FSX9ZWlxxWV88qBrocfr8XAGUlDxbYWsdRR7RUcsb8M37dDO3IPRlVii8lDDOQXb/vc7np4MBi9q8pdEjVi7K6TWTM6MUp0npBvEV7fJQUADcv9Uk9uhJTefg6w6tIA13B83Z7UwBSiGbgXy08U4JvZbbipkzMgSCi2O3UOOnHPFkOF6qr/Q1RWMON5YHu/RO0zVzGyed5+iAx4UpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6dtj8xlqEJwz9mioyVV9vvSweqaQNLLnhtIhhSfOOhk=;
 b=CjhkLNWG1S2WVtNdvGuTEHOcmfXHKTqtb6CNRqAWeSlQnxxw0xyeSYCjsdj3bRs38LYdHJkcGwis183zFcCf/xBhXnHlQmilW/qbbR36YO3FTeGYZxIsYHWsXWNOEykYOPkf660BavLNBRpxdK/azxN4OROtFLpMn1JFQuVs1NLNzUeyRElNSrtZxDLJNgcCasbn5+6VBLRflESFTQyy5AbQsrjNDunV1KmfmLqFvvCpcqAWGajzKwCOdaLEM6iQhsdWnoO4bKJtGlHZGEZ+eg5aQ9+D/v/8kOsfiELYuy52heeHAscjMygnucP6VTWc/X1M7/s6j1MxtapQpAyqLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4918.namprd11.prod.outlook.com (2603:10b6:510:31::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 09:36:05 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Wed, 16 Aug 2023
 09:36:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v7 4/8] drm/i915/vdsc: Add function to read
 any PPS register
Thread-Index: AQHZydBAnqMep2u77U2IHnhhdUkYtq/ss7eAgAAAx9CAAAHwsA==
Date: Wed, 16 Aug 2023 09:36:05 +0000
Message-ID: <SN7PR11MB675074267A3E23017C03023AE315A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230808081134.4187416-1-suraj.kandpal@intel.com>
 <20230808081134.4187416-5-suraj.kandpal@intel.com> <87r0o39w46.fsf@intel.com>
 <SN7PR11MB6750232E19CD74866D061BD4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750232E19CD74866D061BD4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4918:EE_
x-ms-office365-filtering-correlation-id: 19a6ef40-b082-444c-760f-08db9e3c3699
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uV+QWjx+IIf7IR5ACSd2MS4LhICARUxK0m7MzOErWF9gbpfNykFz3rhXlaAz05o00zZlbs2YzmRtB8PcyIKqMOkWNiiefARGlm+pnuopd6jFqyB6ifE/KrAp6gy0BQnCFQbFPLXdbUH1sxmGyvP7nS7dQridJTomoSBSW5NZLiSt7yg+Gq3OpUc5D7/PsGR5G8pPrwFwYTi5N2ddlUnoALko8R1KpRM3bpBwjBJ4Q5YVAaXy5LEHO3JeLuwaF+IX7e3uBusITVpoLnnq9YZck31P6m4/u7nQRm2AzGzM+OThdiOirnLK3MgbMSJ3W5XkZcUFlbh6RFJSTLvO8mQdTKWDBe0+3rC/zSMkz4yA+y4WeS5Z3DEa/tGsvGKrm5gvv/pB1dqt9afqgpYmhfCvRUeCdRFEuk3GW2w+8U0MBZFnzkx55GgDZsOiUBFjgYPPrIm10YVHgW2bdUOf6HOri5vIxWObxbO+82GRXcaP45qc7O+8phCCe+4nUCbxseQg+6b/yeW1JZy5zWn8ecd0siOZXRcZX6xLl9ZWAOXzNK7dxiqwK79xf0vJ7CwKHQ2BBBv6OCx+/aB+bBMxw4uu8hCFshb5mmNu5RBQOyvKV6AaZ2eQkY5naHDvLvJiRJ/O
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(136003)(376002)(39860400002)(1800799009)(451199024)(186009)(2906002)(83380400001)(30864003)(86362001)(478600001)(7696005)(6506007)(71200400001)(33656002)(2940100002)(9686003)(55016003)(5660300002)(52536014)(41300700001)(122000001)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(110136005)(76116006)(4326008)(8676002)(8936002)(82960400001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8ddJN4Ywyr1GkWkAVYjCT59W5fNxe4rJPMFlD0N/Ul645bFitE1YP6vwLOrR?=
 =?us-ascii?Q?ngtCnLKUPrisQl7440BuiVjm84hUxNxn5aDSHLTjoleePmT8oAA/hE5HAslW?=
 =?us-ascii?Q?ADPrdNE9uBjDfi05syOGAoiwbe1HQBgvKid9iuNJq+ETSXRk621Y1E0AjhNW?=
 =?us-ascii?Q?xSap6ZV/5nle1EgbPMXnN3jzImDHwhtpvpohopycLIIDNybCk7aMSBLyNGjz?=
 =?us-ascii?Q?BLxSpIsF0EM+B3/PywoJNjCHUrcTtf6tfLmKJWIBaLNFRJ71+zX0ebMUGiYc?=
 =?us-ascii?Q?tVpi21I4LDrB3N7RCrrROG/zu9nIH0e/+EBO21CD+iWzcAxb6le9kWwPrBve?=
 =?us-ascii?Q?MB3wkA0LcsQQFtosl/+aGzHBgvZY76id6bHgCgIwNaML66st/3PUnA8Ffml7?=
 =?us-ascii?Q?iaEU8Pemj/PG/kMoaAOtx8Q6eztWfHJXxsUjwlma1MgLyDwXUsst9ELFix1w?=
 =?us-ascii?Q?z3ubOjVtRmJIFIsfnzMa7pYPkzOGWflzzh0ppXJLscfwIqaGDQjzAbwcF0a1?=
 =?us-ascii?Q?anrdzvibCH9Qim6qXCSvHLcO5R+5PBgNHYNgR5BuegW8vTYgyJaq22rbfpyn?=
 =?us-ascii?Q?cMZRPOTfMcxcEjK7jF2w7Y1C+R0MVGy+WaGzvlpC1AEp8sCft01dzCt69Byr?=
 =?us-ascii?Q?gj0NdST1JThys47e/feHSoxvn7y04TgK2P18vLFWvhuoGVfRDj+kdyCNqLV3?=
 =?us-ascii?Q?hSr0P4EjQ55vZt7MlXNunNBrSIrjz07kdA89df2rc4rFjYhcZRhQtjIkR0wz?=
 =?us-ascii?Q?AVYBzv4F6VXG8JnH21p+u0P5ZumCbrPpO4q7S75Y5v+t586R01duCP4p9ict?=
 =?us-ascii?Q?wkO3zztFV87cw4EXi9CbAPpOss+XzaU+tgsRA42IpN6UvqsU5HT77ktytvCN?=
 =?us-ascii?Q?TFIq/I/6rEkvgLDL1X71BADU8mVhli0ffN/wKTXjnI4tP/9tNvZAdicNuFPT?=
 =?us-ascii?Q?fQZBhEqW5p4TrlrzGf1S7PB+L4PJekyd1kKhHMNCfky6N6z4fu54cAS6piFk?=
 =?us-ascii?Q?K/c/Ik/8dOhu/Ge+EtepuwDnYtsolzwzFw82QGLxeR6rq2wGZ91aAku0DJVm?=
 =?us-ascii?Q?lJF7Ujlfb1qxh29YtKRv4y1fpZ3YzOqxl3lIcDFIc5iOtEEjp65WG93k2RAv?=
 =?us-ascii?Q?ruzfA7pCTQj63mlP4WDYYF+QUKX19PH+1TAgSsUjxRC9PRZcqtw5CqiZKPm/?=
 =?us-ascii?Q?Tqodpx8avU4kqQoRlUCn4KT7GvgqkBFc9cNMk8vfgFFr0ojNWQkKUUpO/QPx?=
 =?us-ascii?Q?4mb1nZogdbd3A1kQTbNpdZDIcn/eUmxBxYY2xnZXeLMAMqNqBnTJl9lIgBoO?=
 =?us-ascii?Q?es02WN3llGQn+4leyBMURKes8rLaf3K3SJK056jMRR4PJSQWAmTOfX8Fa9wV?=
 =?us-ascii?Q?HLyjn3tResZwSLxwBBczPj0X84gqUE0I1/7gmeM5ggAzcooF/SAE+1a5b/Q5?=
 =?us-ascii?Q?htTBxnGGHWRmt9boFIjCF4MLT0ECG3ae1OfLC7fDkqAOMTo6IcMCGnGg7e98?=
 =?us-ascii?Q?zAX/a0HxSdLZ8GP/XKLwQg3HqREW7hzG46z4lQ0Z8bD69phnfMWpQ4EmfT6U?=
 =?us-ascii?Q?dDsLDA5MYUyQJGW1vDQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19a6ef40-b082-444c-760f-08db9e3c3699
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 09:36:05.4195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 738pwts7b7XF7muF+5sBdzfpy6GkXATTjIipt8ONSwBt9u2O0CMNWpEqVcg/0zMyxTXWXsDUAs2twwxxxL8UKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4918
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 4/8] drm/i915/vdsc: Add function to read
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

++ Ankit
> >
> > On Tue, 08 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > > Add function to read any PPS register based on the intel_dsc_pps
> > > enum provided. Add a function which will call the new pps read
> > > function and place it in crtc state. Only PPS0 and
> > > PPS1 are readout the rest of the registers will be read in upcoming
> > > patches.
> > >
> > > --v2
> > > -Changes in read function as PPS enum is removed -Initialize pps_val
> > > as 0 in pps_read func itself [Jani] -Create a function that gets the
> > > required register and call that in the common read function [Jani]
> > > -Move the drm_WARN_ON one abstraction layer above [Jani]
> > >
> > > --v3
> > > -Send both reg values regardless of dsc engine no [Jani] -Don't use
> > > num_vdsc_instances stick to dsc_split field [Ankit]
> > >
> > > --v4
> > > -Manipulate the reg values instead of creating MACRO to change name
> > > of pps [Ankit]
> > >
> > > --v5
> > > -Read dsc reg values using array rather than individual variables
> > > [Ankit] -Loop the verification of all dsc engine reads to future
> > > proof it [Ankit] -Keep the fix me comment in this patch and remove
> > > it in later one where we add other readouts [Ankit] -Add switch
> > > statement that fills in the required registers based on no of vdsc
> > > engines per pipe.
> > >
> > > --v7
> > > -Pass no of vdsc instances from read_reg function [Ankit] -Fix issue
> > > where arrays do not get freed on return for read_and_verify func
> > > [Ankit]
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_vdsc.c     | 129 +++++++++++++---=
--
> > >  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
> > >  2 files changed, 105 insertions(+), 36 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > index dc86514d9e17..aa93228ca7af 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > @@ -365,6 +365,28 @@ int intel_dsc_get_num_vdsc_instances(const
> > struct intel_crtc_state *crtc_state)
> > >  	return num_vdsc_instances;
> > >  }
> > >
> > > +static void intel_dsc_get_pps_reg(const struct intel_crtc_state
> > *crtc_state, int pps,
> > > +				  i915_reg_t *dsc_reg, int no_vdsc_per_pipe)
> > {
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > > +	enum pipe pipe =3D crtc->pipe;
> > > +	bool pipe_dsc;
> >
> > Matter of taste, but to me that's four local variables too many for
> > small things like this.
> >
> > > +
> > > +	pipe_dsc =3D is_pipe_dsc(crtc, cpu_transcoder);
> > > +
> > > +	switch (no_vdsc_per_pipe) {
> > > +	case 2:
> > > +		dsc_reg[1] =3D pipe_dsc ? ICL_DSC1_PPS_REG(pipe, pps) :
> > DSCC_PPS_REG(pps);
> > > +		fallthrough;
> > > +	case 1:
> > > +		dsc_reg[0] =3D pipe_dsc ? ICL_DSC0_PPS_REG(pipe, pps) :
> > DSCA_PPS_REG(pps);
> > > +		break;
> > > +	default:
> > > +		MISSING_CASE(no_vdsc_per_pipe);
> > > +	}
> > > +}
> > > +
> > >  static void intel_dsc_pps_configure(const struct intel_crtc_state
> > > *crtc_state)  {
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > @@ -994,17 +1016,83 @@ void intel_dsc_disable(const struct
> > intel_crtc_state *old_crtc_state)
> > >  	}
> > >  }
> > >
> > > +static int intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_stat=
e,
> > > +				  int pps, u32 *pps_val)
> > > +{
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > > +	const int no_vdsc_per_pipe =3D
> > intel_dsc_get_vdsc_per_pipe(crtc_state);
> > > +	i915_reg_t *dsc_reg;
> > > +	u32 *pps_temp;
> > > +	int i, ret =3D 0;
> > > +
> > > +	dsc_reg =3D kcalloc(no_vdsc_per_pipe, sizeof(dsc_reg), GFP_KERNEL);
> > > +	if (!dsc_reg)
> > > +		return -ENOMEM;
> > > +
> > > +	pps_temp =3D kcalloc(no_vdsc_per_pipe, sizeof(pps_temp),
> > GFP_KERNEL);
> > > +	if (!pps_temp) {
> > > +		kfree(dsc_reg);
> > > +		return -ENOMEM;
> > > +	}
> >
> > no_vdsc_per_pipe is at most 2. Temporary dynamic allocation is way
> > overkill here.
>=20
> Yes but Ankit was of the thought that we can future proof this going forw=
ard
> if by any chance we get more dsc engines
>=20
> >
> > > +
> > > +	*pps_val =3D 0;
> > > +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, no_vdsc_per_pipe);
> > > +	*pps_val =3D intel_de_read(i915, dsc_reg[0]);
> > > +	if (no_vdsc_per_pipe > 1) {
> > > +		for (i =3D 0; i < no_vdsc_per_pipe - 1; i++) {
> > > +			pps_temp[i] =3D intel_de_read(i915, dsc_reg[i]);
> > > +			pps_temp[i + 1] =3D intel_de_read(i915, dsc_reg[i + 1]);
> > > +			if (pps_temp[i] !=3D pps_temp[i + 1]) {
> > > +				ret =3D 1;
> > > +				break;
> > > +			}
> > > +		}
> > > +	}
> >
> > What is going on here? Feels like this has grown way more complicated
> > than it needs to be since I last looked at this series. :(
>=20
> In case of more than 2 vdsc engines (just for future proofing) this loops=
 looks
> at all the registers being used for that pipe and makes sure everyone has=
 the
> same value
>=20
> Regards,
> Suraj Kandpal
> >
> > > +
> > > +	kfree(dsc_reg);
> > > +	kfree(pps_temp);
> > > +	return ret;
> > > +}
> > > +
> > > +static void intel_dsc_read_and_verify_pps_reg(struct
> > > +intel_crtc_state
> > *crtc_state,
> > > +					      int pps, u32 *pps_val)
> > > +{
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > > +	int ret;
> > > +
> > > +	ret =3D intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> > > +	drm_WARN_ON(&i915->drm, ret);
> > > +}
> > > +
> > > +static void intel_dsc_get_pps_config(struct intel_crtc_state
> > > +*crtc_state) {
> > > +	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> > > +	u32 pps_temp1, pps_temp2;
> > > +
> > > +	/* FIXME: add more state readout as needed */
> > > +
> > > +	/* Readout PPS_0 and PPS_1 registers */
> > > +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> > > +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
> > > +
> > > +	vdsc_cfg->bits_per_pixel =3D pps_temp2;
> > > +
> > > +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> > > +		vdsc_cfg->bits_per_pixel >>=3D 1;
> > > +
> > > +	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4; }
> > > +
> > >  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)  {
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > -	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> > >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > > -	enum pipe pipe =3D crtc->pipe;
> > >  	enum intel_display_power_domain power_domain;
> > >  	intel_wakeref_t wakeref;
> > > -	u32 dss_ctl1, dss_ctl2, pps0 =3D 0, pps1 =3D 0, pps_temp0, pps_temp=
1;
> > > -	int no_vdsc_instances_per_pipe;
> > > +	u32 dss_ctl1, dss_ctl2;
> > >
> > >  	if (!intel_dsc_source_support(crtc_state))
> > >  		return;
> > > @@ -1025,38 +1113,7 @@ void intel_dsc_get_config(struct
> > > intel_crtc_state
> > *crtc_state)
> > >  	crtc_state->dsc.dsc_split =3D (dss_ctl2 &
> > RIGHT_BRANCH_VDSC_ENABLE) &&
> > >  		(dss_ctl1 & JOINER_ENABLE);
> > >
> > > -	/* FIXME: add more state readout as needed */
> > > -
> > > -	no_vdsc_instances_per_pipe =3D
> > intel_dsc_get_vdsc_per_pipe(crtc_state);
> > > -
> > > -	/* PPS0 & PPS1 */
> > > -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> > > -		pps1 =3D intel_de_read(dev_priv,
> > DSCA_PICTURE_PARAMETER_SET_1);
> > > -		if (no_vdsc_instances_per_pipe > 1) {
> > > -			pps_temp1 =3D intel_de_read(dev_priv,
> > DSCC_PICTURE_PARAMETER_SET_1);
> > > -			drm_WARN_ON(&dev_priv->drm, pps1 !=3D
> > pps_temp1);
> > > -		}
> > > -	} else {
> > > -		pps0 =3D intel_de_read(dev_priv,
> > > -
> > ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> > > -		pps1 =3D intel_de_read(dev_priv,
> > > -
> > ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> > > -		if (no_vdsc_instances_per_pipe > 1) {
> > > -			pps_temp0 =3D intel_de_read(dev_priv,
> > > -
> > ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
> > > -			pps_temp1 =3D intel_de_read(dev_priv,
> > > -
> > ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
> > > -			drm_WARN_ON(&dev_priv->drm, pps0 !=3D
> > pps_temp0);
> > > -			drm_WARN_ON(&dev_priv->drm, pps1 !=3D
> > pps_temp1);
> > > -		}
> > > -	}
> > > -
> > > -	vdsc_cfg->bits_per_pixel =3D pps1;
> > > -
> > > -	if (pps0 & DSC_NATIVE_420_ENABLE)
> > > -		vdsc_cfg->bits_per_pixel >>=3D 1;
> > > -
> > > -	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> > > +	intel_dsc_get_pps_config(crtc_state);
> > >  out:
> > >  	intel_display_power_put(dev_priv, power_domain, wakeref);  } diff
> > > --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > > b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > > index 785ede31116e..862dc708c5fc 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > > @@ -78,6 +78,10 @@
> > >  /* Icelake Display Stream Compression Registers */
> > >  #define DSCA_PICTURE_PARAMETER_SET_0
> 	_MMIO(0x6B200)
> > >  #define DSCC_PICTURE_PARAMETER_SET_0
> 	_MMIO(0x6BA00)
> > > +#define DSCA_PPS_0				0x6B200
> > > +#define DSCC_PPS_0				0x6BA00
> > > +#define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0
> > + (pps) * 4)
> > > +#define DSCC_PPS_REG(pps)			_MMIO(DSCC_PPS_0
> > + (pps) * 4)
> > >  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
> > >  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
> > >  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
> > > @@ -88,6 +92,14 @@
> > >  #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)
> > 	_MMIO_PIPE((pipe) - PIPE_B, \
> > >
> > _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> > >
> > _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> > > +#define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) -
> > PIPE_B, \
> > > +
> > _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> > > +
> > _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> > > +#define ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) -
> > PIPE_B, \
> > > +
> > _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> > > +
> > _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> > > +#define  ICL_DSC0_PPS_REG(pipe, pps)
> > 	_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
> > > +#define  ICL_DSC1_PPS_REG(pipe, pps)
> > 	_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
> > >  #define  DSC_NATIVE_422_ENABLE		BIT(23)
> > >  #define  DSC_NATIVE_420_ENABLE		BIT(22)
> > >  #define  DSC_ALT_ICH_SEL		(1 << 20)
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
