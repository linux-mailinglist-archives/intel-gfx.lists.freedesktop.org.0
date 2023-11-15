Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1D07EC415
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C93010E059;
	Wed, 15 Nov 2023 13:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CBBB10E046
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700056218; x=1731592218;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q7Mj1VQQqKQo1dEDx+8xaA0tMwVE2a/VmV+eVI118t8=;
 b=A1AbV3xdZUi/e9PlAi0+XNuocBN2HHxRey5ylj9sc0YM4zybt71tU63C
 CDXcY+KfUAj1lwxnHhj2y6NIUopFQ7DcpiaEk7H6H31Qky8/WOFZ6KiKK
 FtzTTawG9EVLNWAtGikvExuFE/mQT3S+ww0cwkQZNxjB9/yiy8+rHYz/+
 9jiBPtApuSYCVhWaygSPe89FuVE5QjNORpSBWWD9x4JdK/Py1CKPVl+mE
 FAiczzakxhUVHH5aDNiWneemBAPwsFHu/ifm+ccYQrWkFIbxeEzF6ykpo
 vM1iB5l6NLVC2oRfNp1SQfNL9zZ8aZnTHJ4EDtFlQ3xBaDDCEuiY/FQw4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="394795290"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="394795290"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:50:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; 
   d="scan'208";a="6406598"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 05:50:17 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:50:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:50:16 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 05:50:16 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 05:50:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tg25KHIhWOVlXiL16N4PfysvjbUX26/VDTp61ZgTIQ9cO9EM00KZIJsWVTnEOH9XV82bJb8dynPcmxOhZjfceQVhdd2tC3YI8C6l13c9BPlMOHMnlVD6d06nX2LJwIETnJ/P8UEg33zSPwJG3EA8ebZ93+8gTh3yCnD86EuthQNHZUVYSCWdT4rXS7zuhdFVKESrir8R0k8/8K2l2ZQ9g2A+NaJ/3fbCxXecJCGrcCMLUr+n9RfZ562zHRP/T0EDwl3bPk+fGSqkiCsv6YbIzgkum+63Huu5ySi2QJOZl0xVtiikq35nMyHZMOwNavKMadWzKs9DdMMUBiVAub/+vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xac4p12q191H3pnGTPWcWlTCrn3tSZlyPkMf+QjyJ0E=;
 b=SeLCmFy5mNk/9Besv9TR3IgjLeidkvH14//IU3Zd2tHG4mTYlXqb/zajpzkAA2ASm7kI5EqLcK0JTWzgvduuq1sba9p5urSzAtgpBm4DVX3A6+B7kg074rjAOqj0trzdacaxwvSsBUVRhEJrm/H1fkWW28DDKZ0S3hYPD1YVc3oJQi+NRb7LcvCwXO6yBoLxsv4SJE5gxkO2WD7612k5For1gmC00MNRG6BXMpr/v1ovn6/aKSlHELQBuWUTrxwjRiHEFR6blrYf33OO9UYfQki0xTkfHDk/hsxID7jPwYFUpTV6kH3Q4muoK0yJ32wZd0rNZ2YjzAg7Lu3nlinILg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN0PR11MB6157.namprd11.prod.outlook.com (2603:10b6:208:3cb::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.17; Wed, 15 Nov
 2023 13:50:14 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::f5b4:48e7:2fb2:d788]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::f5b4:48e7:2fb2:d788%6]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 13:50:13 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 3/3] drm/i915: Compute CMRR and calculate vtotal
Thread-Index: AQHaF44P2ciS2U1PV0eAJYltjZqshrB7GRKAgABM1mA=
Date: Wed, 15 Nov 2023 13:50:13 +0000
Message-ID: <IA1PR11MB63484FF6FDE8DB3232E4A9A7B2B1A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231115063054.3754600-4-mitulkumar.ajitkumar.golani@intel.com>
 <87jzqjqsym.fsf@intel.com>
In-Reply-To: <87jzqjqsym.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN0PR11MB6157:EE_
x-ms-office365-filtering-correlation-id: 6ccba819-cf5c-46e3-382d-08dbe5e1cac6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hHa99gGw/hoD0RpgoHO3IxJreLMdIM5/7lSDd3zv9ezfHjBRgADJ5DZa2bTIQ+x3mC846a8+HVLhglpe3Wm/GLrVqZIsYcrzKy7vPlGRX8Z28Gxy48rnVeHU1hsDAvPDa6HKS7nA//B5OwNcCrGYe4miXdE1FdHLxtMT/QtS7WO922xjh3AtcA4KhhXp0pmpbZU+sq/lrrrXoQt05g4IuQa/jCo0qrSyu4iWsPh76xzcVfz7qry+EF8wZ3qm9KVZAs1TudBvk3UaA5uP1+tTjoem4Dbpin70mxuNk3kOjR7OoTCLj9Q1YhfhjnsADcGvov/FhNku1Y3A3b3c0TTwZHI/0HYmYlGYqkuvu2DTN3j9HhnWesu+3bnWK7GefHfV8RS1ACuDKwQIrfGm/ql643Lmbm0EDBcqDHGz6f1VnqpTjwPVAcrl7vncGxVs6euh1DnsST/jqHBGuW5OrxYy0eU0B9uPHl9urnF2oepzyW3ITXoxNt43H3krlmFf/9E7sp8a6aU/sO/30VmJXDJAsgvVmSl6EIHPOxrBy7b/mEVxB1PVF1q40qHudQgQxZKzEl887uEEiELpGdnoUF+ugG85WxfrMaXywA0DBsB25/bVizUA0NMdFNPSyJl4AiXI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(39860400002)(136003)(396003)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(38070700009)(55016003)(8676002)(8936002)(71200400001)(9686003)(55236004)(7696005)(2906002)(4326008)(53546011)(6506007)(83380400001)(26005)(41300700001)(38100700002)(33656002)(122000001)(82960400001)(5660300002)(52536014)(76116006)(54906003)(66946007)(316002)(64756008)(66556008)(66476007)(66446008)(110136005)(86362001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qKBLqcDzG3zbJeE2fmkKPVwj8Wsp9st6ta/IhPMBzterGcYEL9ifEJdbkT7b?=
 =?us-ascii?Q?S1F9v/Pl9H1phv60TiJcGoGx/YTmlqLBlsyAK1CVzlKLEM8uC/I3nAcaMP/J?=
 =?us-ascii?Q?qGPKk7A/8iwelqa+IiZ7aaBHPHKD7LxDmO7xPVTR52UsqyduxjByL0GUYuv1?=
 =?us-ascii?Q?rUB1dci1BZnE42cNEjUmqwS+05HfZgU2tn0OAyYnjbG/gNRnmlc42yfXzTrp?=
 =?us-ascii?Q?Vnmg7RdMQxbNYAOZbjnSlRlu7ZppjJSRVu9x+csxiGLB6kTaoAqBj2mv+qJl?=
 =?us-ascii?Q?zrwZLk7c5ilw+nn5ZkojP7mYM4o9T1c3VotN2159/xEHC+XLZGXQf2lxt0h6?=
 =?us-ascii?Q?JAIRlqO3lbeNkBkjEG4xqFSNM6Ee/1ltG6Dm979LGPrMEYEb6vnLCmPJcE7L?=
 =?us-ascii?Q?7kMekKmNZN/bgZ9LIJNJXEmyGFQC48ywJqmj3BPHc180C8bviFDbvVye28L+?=
 =?us-ascii?Q?WUYe7U6gKvLjdkQs0k5jwBIEGEFq+xJjJAtGC6LchtZ2RutqhxznikxvqzhZ?=
 =?us-ascii?Q?TOJtowZ0YAe12BiB7bR9B8UmA9/qT2efaRkPMr6k6gsgC40ZgtJ1YEBqkvTP?=
 =?us-ascii?Q?NihcKYqzuhzMIhokKaQt0EQmpF9xtMis2nZayZc1o2f6hg6VJJb6F7Ru9XZo?=
 =?us-ascii?Q?l1gkYeI22lCq9UPQ+ICFKhGCUJkNd7HftAL7i5NwGBYQvgGeAvmPIVYttHJU?=
 =?us-ascii?Q?k5L5DhFptSdpiFy9hbbmi5gPCbepgBpLnXDDsuDFx8EMUGWgk/nQwE0gwg4J?=
 =?us-ascii?Q?phxtBkS1+Swz2QEviPxFRZD4jbgFjkcN+PHx5MG9gyk7qcnQmhIMpycBpRi9?=
 =?us-ascii?Q?NXag+VN34+1KNF8ooLW1DINhmySQeVVTIqUgI9uQ12GPyVSNTBi5NUER05CD?=
 =?us-ascii?Q?SvzXsV47/TtEdUIi73oeYbBoaMZe/6Obo/7i3WrptRZnwI9zNVbMRjUsYWIC?=
 =?us-ascii?Q?T4moMvcgCc+1V7vZETP4FhqhXQUgKDwtNzMfh7yu8ulErli8ZtrO7JkCs6KR?=
 =?us-ascii?Q?4wsgiM9mCL9sEb9Wno5XpGjrHSdR1Urnt0gzG95gEH4lFQXcZqf+foPHtoZJ?=
 =?us-ascii?Q?JS/0BeuYCsHMEvc7oTodI+a95SjNQOxtdNck4fMQ1INnBYHWuxe9qkgsxpBu?=
 =?us-ascii?Q?/uyVD4gDSqP4o9Y7+adIxIxqmO2c35Ooc3Y8uX4lKM80Zlq9YDxhyIn6LeqG?=
 =?us-ascii?Q?QGkp9SuMNY+2bVo01p1zHZmetFslOBHdTP4FifK0WPic8ARxIzGL/LFFKEig?=
 =?us-ascii?Q?2dQ38GjpLtjdRa2yqV+xIoYhRR50B8LfZFq6dBAvNVjPD5Cflp5BBbOqLYV0?=
 =?us-ascii?Q?EyyJFwZv24MQ6xZ1yMnChIomAvm/ORvGb3jxr0pZtImh/o4hi0wLiZp77i0M?=
 =?us-ascii?Q?fGrCsW0M1Pm7kih5hxBMfFk7cuMwvBnPt7klL0huz2fxWVmw6WQn7QHarOXH?=
 =?us-ascii?Q?ppCihaC8CRmk6KITbNmBaHvpq/BR3z/l54pZ16fkI9aK5CR8ahELOnxWaWl/?=
 =?us-ascii?Q?GdvanP7YnuHYWJowGYsWfhgsg65b5JpA24EWedyL9MDaZprUrtFHY3Jop1pb?=
 =?us-ascii?Q?lExPfGXO0xyxZFs1Hoo/BiQb8P1SSZQ9feCZEeo3+NpL+k5Ih5e9YTv+CgAe?=
 =?us-ascii?Q?7kdLPbfrJ9CR+lVfXOzlxTs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ccba819-cf5c-46e3-382d-08dbe5e1cac6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 13:50:13.5161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mC31IkkkZ9w+sUtb24Y3G+E+5nIdqX23FLwqcFzgSAzKJr0BtdgWjCylL+FpaTgBHF/LuCjiLKae00AA+WV8TBKvdexKnSMn0BxqzPNfWn2hP0+KgL2itcFSVAKLgRBC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6157
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915: Compute CMRR and calculate
 vtotal
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks @Jani Nikula

Addressed all review comments.

Regards,
Mitul

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, November 15, 2023 2:44 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915: Compute CMRR and calculate
> vtotal
>=20
> On Wed, 15 Nov 2023, Mitul Golani
> <mitulkumar.ajitkumar.golani@intel.com> wrote:
> > Compute Fixed Average Vtotal/CMRR with resepect to userspace VRR
> > enablement. Also calculate required parameters in case of CMRR is
> > enabled. During intel_vrr_compute_config, CMRR is getting enabled
> > based on userspace has enabled Adaptive Sync Vtotal mode (Legacy VRR)
> > or not.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
> >  .../drm/i915/display/intel_display_device.h   |  1 +
> >  drivers/gpu/drm/i915/display/intel_vrr.c      | 81 +++++++++++++++++--
> >  3 files changed, 78 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index f5a69309e65a..d61790f8ebb4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5479,6 +5479,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  		PIPE_CONF_CHECK_I(vrr.guardband);
> >  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
> >  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
> > +		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> >  	}
> >
> >  #undef PIPE_CONF_CHECK_X
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> > b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 4299cc452e05..66cbc3a6bbe8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -68,6 +68,7 @@ struct drm_printer;
> >  #define HAS_TRANSCODER(i915, trans)
> 	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
> >  					  BIT(trans)) !=3D 0)
> >  #define HAS_VRR(i915)			(DISPLAY_VER(i915) >=3D 11)
> > +#define HAS_CMRR(i915)			(DISPLAY_VER(i915) >=3D 20)
> >  #define INTEL_NUM_PIPES(i915)
> 	(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
> >  #define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)-
> >has_hotplug)
> >  #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)-
> >overlay_needs_physical)
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 1e33661062b3..4a056a71b68d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -105,6 +105,52 @@ int intel_vrr_vmax_vblank_start(const struct
> intel_crtc_state *crtc_state)
> >  	return crtc_state->vrr.vmax -
> > intel_vrr_vblank_exit_length(crtc_state);
> >  }
> >
> > +static int
> > +is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
>=20
> Predicate functions need to be bool, not int.
>=20
> > +{
> > +	int target_refresh_k, actual_refresh_k;
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	target_refresh_k =3D drm_mode_vrefresh(adjusted_mode) * 1000;
> > +	actual_refresh_k =3D DIV_ROUND_UP(adjusted_mode->crtc_clock *
> 1000,
> > +					adjusted_mode->crtc_htotal) * 1000;
> > +	actual_refresh_k /=3D adjusted_mode->crtc_vtotal;
> > +
> > +	if (actual_refresh_k =3D=3D target_refresh_k)
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> > +static unsigned int
> > +cmrr_get_vtotal(struct intel_crtc_state *crtc_state) {
> > +	unsigned int muliplierM =3D 1, muliplierN =3D 1, vtotal;
>=20
> Please no camel case, and please fix the typo in multiplier.
>=20
> > +	unsigned int actual_refresh_rate, desired_refresh_rate;
> > +	unsigned long long actual_pixel_rate;
>=20
> All this unsigned math gives me an uneasy feeling. Please consider using
> signed math.
>=20
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	actual_refresh_rate =3D DIV_ROUND_UP(adjusted_mode->crtc_clock *
> 1000,
> > +					   adjusted_mode->crtc_htotal) *
> 1000;
> > +	actual_refresh_rate /=3D adjusted_mode->crtc_vtotal;
> > +	desired_refresh_rate =3D drm_mode_vrefresh(adjusted_mode);
> > +	actual_pixel_rate =3D actual_refresh_rate * adjusted_mode-
> >crtc_vtotal;
> > +	actual_pixel_rate =3D (actual_pixel_rate * adjusted_mode->crtc_htotal=
)
> > +/ 1000;
> > +
> > +	if (is_cmrr_frac_required(crtc_state)) {
> > +		muliplierM =3D 1001;
> > +		muliplierN =3D 1000;
> > +	}
> > +
> > +	crtc_state->cmrr.cmrr_n =3D DIV_ROUND_UP(desired_refresh_rate *
> > +			adjusted_mode->crtc_htotal * muliplierN,
> muliplierM) * muliplierN;
> > +	vtotal =3D DIV_ROUND_UP(actual_pixel_rate * muliplierN, crtc_state-
> >cmrr.cmrr_n);
> > +	crtc_state->cmrr.cmrr_m =3D
> > +		(actual_pixel_rate * muliplierM) % crtc_state->cmrr.cmrr_n;
>=20
> You're probably going to need do_div() for the remainder.
>=20
> > +
> > +	return vtotal;
> > +}
> > +
> >  void
> >  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >  			 struct drm_connector_state *conn_state) @@ -
> 149,6 +195,27 @@
> > intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >
> >  	crtc_state->vrr.flipline =3D crtc_state->vrr.vmin + 1;
> >
> > +	/*
> > +	 * When panel is VRR capable and userspace has
> > +	 * not enabled adaptive sync mode then Fixed Average
> > +	 * Vtotal mode should be enabled.
> > +	 */
> > +	if (crtc_state->uapi.vrr_enabled) {
> > +		crtc_state->vrr.enable =3D true;
> > +		if (HAS_CMRR(i915))
> > +			crtc_state->cmrr.enable =3D false;
>=20
> What would have set this to true?
>=20
> > +		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> > +	} else {
> > +		crtc_state->vrr.enable =3D false;
>=20
> What would have set this to true?
>=20
> You could simplify this to
>=20
> 	if (crtc_state->uapi.vrr_enabled)
> 		...
> 	else if (HAS_CMRR(i915))
> 		...
>=20
> > +		if (HAS_CMRR(i915)) {
> > +			crtc_state->cmrr.enable =3D true;
> > +			crtc_state->vrr.vmax =3D cmrr_get_vtotal(crtc_state);
> > +			crtc_state->vrr.vmin =3D crtc_state->vrr.vmax;
> > +			crtc_state->vrr.flipline =3D crtc_state->vrr.vmin;
> > +			crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> > +		}
> > +	}
> > +
> >  	/*
> >  	 * For XE_LPD+, we use guardband and pipeline override
> >  	 * is deprecated.
> > @@ -161,11 +228,6 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
> >  			min(255, crtc_state->vrr.vmin - adjusted_mode-
> >crtc_vblank_start -
> >  			    crtc_state->framestart_delay - 1);
> >  	}
> > -
> > -	if (crtc_state->uapi.vrr_enabled) {
> > -		crtc_state->vrr.enable =3D true;
> > -		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> > -	}
> >  }
> >
> >  static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
> > @@ -295,6 +357,15 @@ void intel_vrr_get_config(struct intel_crtc_state
> > *crtc_state)
> >
> >  	trans_vrr_ctl =3D intel_de_read(dev_priv,
> > TRANS_VRR_CTL(cpu_transcoder));
> >
> > +	if (HAS_CMRR(dev_priv)) {
> > +		crtc_state->cmrr.enable =3D (trans_vrr_ctl &
> VRR_CTL_CMRR_ENABLE) &&
> > +					  (trans_vrr_ctl &
> VRR_CTL_VRR_ENABLE);
> > +		crtc_state->vrr.enable =3D trans_vrr_ctl &
> VRR_CTL_VRR_ENABLE &&
> > +					 !(trans_vrr_ctl &
> VRR_CTL_CMRR_ENABLE);
> > +	} else {
> > +		crtc_state->vrr.enable =3D trans_vrr_ctl &
> VRR_CTL_VRR_ENABLE;
> > +	}
> > +
> >  	if (crtc_state->cmrr.enable) {
> >  		cmrr_n_hi =3D intel_de_read(dev_priv,
> TRANS_CMRR_N_HI(cpu_transcoder));
> >  		cmrr_n_lo =3D intel_de_read(dev_priv,
> > TRANS_CMRR_N_LO(cpu_transcoder));
>=20
> --
> Jani Nikula, Intel
