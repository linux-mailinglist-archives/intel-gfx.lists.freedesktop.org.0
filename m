Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6314B7EC41C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:52:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDDFB10E046;
	Wed, 15 Nov 2023 13:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 688AA10E046
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700056329; x=1731592329;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WizwwS1dk4Wnv/GzJ516kWAQ74e6qhu6uw+nB0Be+qA=;
 b=GpxYGnxaVBT/7Pkx7/cTjCZ9W2ZHiwPImi6uB5khGaQK10PHLmxGZiD3
 LeBWkAiQBOYMTaXgvvI3uWKkDupJrkZShFnL61mYhf13SVcIiFMHaHTxk
 zLahuIRGS6DMqQf2a8EWGdFDGwlhEXJeXzO+rPoLCxL7zo+PlXobTBS4J
 LBkRmuwRb3vDwtPEyz9azegSy/z+6mqjKxDpcHfcueEIl4N0S4rQmYGNX
 buZE97uPNM9lXakVWlTfmDdhSLZG7oL8huNmi2scGuU9bTqXH3/bWEnSB
 89NohrV+iH1Srj4pL1oZJjDBqLi4qvVi8jMYqwO5ItqLoE9k4k6pE/5dF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="394795574"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="394795574"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:52:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; 
   d="scan'208";a="6406750"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 05:52:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:51:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:51:55 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 05:51:55 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 05:51:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QAAbobSN4+pLA0psmyLyjeYD2d2TgY3peCRsB9fHTMWILL4ku0ugTyrOjUGl9msiiG3bOiZwtlLIRHXFHYzYENcNi/5VLczlZI6p6zmAO4ktgD0YdeWx06tDEGQRN/Ek9tn7Scgv1eTeVPROv5ieYHo+Imlu+W/ydpropWnonROuc5hDxksw6G1wC0LIzamcsA3eC/K4xB/4EcIDtAdJaYfo7yCoGxYN1tj1gQb9TeS5kwIlmFp/N6rj7MBZZfqAfgSMHTwnxugsTDH4ejmLTKCTvz63MGDquHl5Na/qS9q3nl7UNTjDjoSB2lpx3JD3bDCrJssaa8Cojp8QRHik+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VJc4Vhxz8EPEpJIVNfUDSzfXJe6X8tndsxRxsjv7gsE=;
 b=nbeUs1afl7pczIWHjuJV8kY++vPp3FejNf8pALklxt4LSwEBRyzoLw+D2O0UcAn0+xsEdTzSroyzKRvLGyt+IKVU06EtoYCpFr5K/AnsfQ4NXsDgR1YXJBL8vHkm3LBj5fqQMUu6vAcoO2UmI9duZG4gj6cnPgjnmpN6NjC8ZkiU2Kwc4dqXNtGOityebgVBdeRLJ+jIEgzfC9m9EHl9XhMaj8ip87j+Gnp6rkQNa5QxWI90+/vfeD8Qopberap3+R0yuIUZ0zoe+rrubaV1e38498l0mvoKvTxLsLIQ1YBm7l8GlIoaHN00a+jx1wT+M5NEPt7H8PjdnGxbffDD3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Wed, 15 Nov
 2023 13:51:52 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::f5b4:48e7:2fb2:d788]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::f5b4:48e7:2fb2:d788%6]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 13:51:52 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [RFC 3/3] drm/i915: Compute CMRR and calculate vtotal
Thread-Index: AQHaF44P2ciS2U1PV0eAJYltjZqshrB68vqAgABzhqA=
Date: Wed, 15 Nov 2023 13:51:52 +0000
Message-ID: <IA1PR11MB634806F86A24EF8C8ADB580DB2B1A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231115063054.3754600-4-mitulkumar.ajitkumar.golani@intel.com>
 <ZVRr7RPlHfz-MbMz@intel.com>
In-Reply-To: <ZVRr7RPlHfz-MbMz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CY8PR11MB7777:EE_
x-ms-office365-filtering-correlation-id: b6e64c9b-b92f-43db-9fd3-08dbe5e205c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pVRMISn2AKT8aNhw7MWrN9VCbWh27mhNYHDkOieadOHQ84u9e8DLkEir67exlg7MsRd6cI7/jkhPxZn4/0gAY2vMgKsbpjx0kb2gZozAjsN4brZCfNMY7zXzFbsc2NXSrq4029je8UIabYo7K81Drv9RccNdZvKCtDbvPbrabiL+Ywveuy4iW5SMzF1jsM/ikgZQVw8uCnI821QSmv/EEhyk1ycgietewHAWVQnKLRSwVyePAkAD3sq+CRbhJlAczXIgBq6ZyEr/kpO3Zio5IZW4rApd1rHM2oEKlLGsD+jdlKRfwN09s2VDm5uxhPa1/le++qP0DXTYxbOq2IEmemTfeIIymRspQ9CeqSZyPia1eZm61iULYkcXNdjbLHpJ+Y7IgKXDQJw78dj3z8CwgliRbQksakTmRHDCH+RYJYvnhHsLI7gZAHp3oOg4aacw1bnmleppAGrPm40pyPn14RP9sYJFxtgUxnrUOte9rkw+6a4tw7dffdTi9cqZkaTPFXmDj2qPNXM/UYdhejTkmUMWVdal18W/XQpS9yTo0qypEq1lQVoU7pnzQBmljvDMFlQwi+ovdTgtBuEST0j1/GYZOXI5/Woqi5ezw6gxXsdsg1GYOEmRFRRUjO+E+lkr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(39860400002)(346002)(376002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(122000001)(33656002)(41300700001)(83380400001)(55236004)(86362001)(6506007)(7696005)(4326008)(8676002)(52536014)(38070700009)(8936002)(53546011)(55016003)(66946007)(5660300002)(66556008)(76116006)(9686003)(316002)(54906003)(64756008)(66476007)(66446008)(82960400001)(6916009)(26005)(478600001)(71200400001)(2906002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?mE8xh4qsBkBrOLolRipHHOuw6JD1oPPUleDEhR/S0MfCRjdRaJVvf/ELZn?=
 =?iso-8859-1?Q?I/eOIMKAHzLTLfrx//sU2kfZF2rTO3BKdOpNMGb+wihM/VHS0o5YPHvcEi?=
 =?iso-8859-1?Q?nKPwcCYVMJo1E+V31lbx6X8IljUdCypOUJoC2gT1FY28HCmH9k874FfT6k?=
 =?iso-8859-1?Q?raPfggiF6ldau0KTyBdEbj6ubAdGQ0vvFGvGuuOm+NR881JOj5P/3dplIT?=
 =?iso-8859-1?Q?uT7NvICdh2CXqrB0Fsq0x5pdnCBjVl1B4y1KRBU03uaSBgcbtWyHE8uRYr?=
 =?iso-8859-1?Q?yF7wSlrvsqDmJTVmUyE6nGDsUheaAE/WBjkm5Ig+Kc0GDnAFd7wNMwoAZ3?=
 =?iso-8859-1?Q?iMJ0pXis5rst70arD4oKRNsAGAW+y1FT56qhYdeqNndC9AvDph5x8VU8uN?=
 =?iso-8859-1?Q?tKKxuGowgWg97zDcLI3vV+m0uUblGSmBTCRL0omLCe2J1d2iaye8uZxfMi?=
 =?iso-8859-1?Q?WKhUvS7EOzJV/yR0p/ZKsnt7BYY5jiCO21XGZ4/rUPxQEz/b2MNa9R9aBh?=
 =?iso-8859-1?Q?S48ILxU3ZgNuufgoCyvqj8ghg+weXRDmXsocR9piNDlq8jeXA68xoerFVm?=
 =?iso-8859-1?Q?CWk+E6eZKwRdrViR+11N51oJ3EnpMzRu6fdM4PhLtIQwW7sCn44j9Xd9rL?=
 =?iso-8859-1?Q?PCpXJM2M4kHnWnfGx9KjK8gyODn8SCm1e2lAbDJmjkVLGmVUwb6sVCifgV?=
 =?iso-8859-1?Q?VnfSE+5WSVWLMtEcJm/THmblzBe3Ibwra0RANHzF8yHRXeg4pLykduVUQj?=
 =?iso-8859-1?Q?VhoDqGmhF6kMDW2THjREpxrbtLZe+/RXeOaLyQuoqK6lx3f/uBFzizaa6u?=
 =?iso-8859-1?Q?B/7VQVKzh5HvGp6xDKLX5yLDOJAY3sp3L6ZN5PmMsMi9KQVkq5Lpl7lPms?=
 =?iso-8859-1?Q?Gy4ll71pQCQI63tqvOn6ekAo6VqDkVyL7pg6CnXlsZTrUrHzfZiN/dtG8c?=
 =?iso-8859-1?Q?FwzyNXjsSMshzknZpReB8C5CeAFDgUEwAMiuDsMry7VOL2KRVv9glEDbK2?=
 =?iso-8859-1?Q?8IcfDWyUk5WGEZNcN3x8RSp1NYwNltUy4Vb5UDa/QWMQUUd8KyLZUs1mvG?=
 =?iso-8859-1?Q?zAQYG7m8yNpnZJKNp8ulo/kD8tTNwSIwcbGIcCqXR9eZXG/XuLM+Go8UAx?=
 =?iso-8859-1?Q?jEYo+nI5Ui9iqS6Op8LBXQTwZqLKwM6PcrRrOM5ciQ25uU6lWfRWZF4tKL?=
 =?iso-8859-1?Q?oLDc82v1gzRtYiqF3ntnCIS+p0K2U2pKddJpof4yGXd3GoKrd8ohrmM9mR?=
 =?iso-8859-1?Q?KOsvq3It4HCCATfzLdb2y21yN5/wdWIQougo8pwjwMlTEzltSITj0xifMU?=
 =?iso-8859-1?Q?wBk1lONqkctpDaGaYksM3Cf9J2v4iZlHpYlaMwXsc+hx91IoHJ7R7ybtmS?=
 =?iso-8859-1?Q?9oDnGgsOIdRDTncY8Vy52G7vf9UNtKX6AQAFG1VZeH0ObLU1g2Z9wPZggw?=
 =?iso-8859-1?Q?47qCHmLpc2wbJ5xbXETkQwFFQXwHz6Sh2tF/oPbxQpmL6ai5lLAOsNaLhT?=
 =?iso-8859-1?Q?K7C7VT8zIwRL5wWxCXngJtVGZCHYzIig4IHdIkpf5dSmif2oJHmXp/f71z?=
 =?iso-8859-1?Q?q7iTeKrOWTelt4Pcf4msA6+cYruEIlxkgcFX2zVS56YdJ4ejNo9/SH4cZN?=
 =?iso-8859-1?Q?crk0lo9Uc+HaiB2T7wEICYVE/hSardoIsDhMnuz2TLPXS3WmrLZIOb81nb?=
 =?iso-8859-1?Q?k670mOh2eEhGmNbWxLQ=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6e64c9b-b92f-43db-9fd3-08dbe5e205c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 13:51:52.4733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J8tGcAgSOU7GXDu8aWq920edd05dE6IRY5fXwV0IjS7tTnr0QpEDmWO7/OlUAIHTxKCPcO7DJQWymmbufCXhGtLVitPJpOOD7y3N8tf9UmbmDrLj8zm2683HDkHk5qiu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7777
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks @Ville Syrj=E4l=E4

Addressed review comment.

Regards,
Mitul

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, November 15, 2023 12:28 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>
> Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915: Compute CMRR and calculate
> vtotal
>=20
> On Wed, Nov 15, 2023 at 12:00:54PM +0530, Mitul Golani wrote:
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
> > +is_cmrr_frac_required(struct intel_crtc_state *crtc_state) {
> > +	int target_refresh_k, actual_refresh_k;
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	target_refresh_k =3D drm_mode_vrefresh(adjusted_mode) * 1000;
>=20
> That is just your 'actual_refresh' rounded to the nearest integer. It is =
*not*
> any kind of target refresh rate.
>=20
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
> > +	unsigned int actual_refresh_rate, desired_refresh_rate;
> > +	unsigned long long actual_pixel_rate;
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
> > +		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> > +	} else {
> > +		crtc_state->vrr.enable =3D false;
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
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
