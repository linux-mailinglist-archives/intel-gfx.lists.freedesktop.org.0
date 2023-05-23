Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B853C70CF34
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 02:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4269D10E08C;
	Tue, 23 May 2023 00:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B689510E035
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 00:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684801609; x=1716337609;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R3bRP6pBSMb9o6xpnRu9nVGuf3f8FrW23Kyg0NMuUQY=;
 b=IqstY3q5AfyzCWnRda/3qJl5HFJgo1v6UmHSkHGuQ4ifD8fTzkZbUCHK
 GsrlgrmZga2aFv/HVGBgLMonC0vEV3JX6sU0c0x0JV9KD4kLgFzft9jJF
 kmot/GiiZx0yGclZBEkysOvRM9PUj60EIfJdFK3X40AOG1K2CLqE78hkV
 JmfVdZNllMB5L+JeFuloBAZCfdPVsk7UCTUONX3QuS464d0EbzfukdLRY
 2tPiUCYPieo9JR1s7Tx8Nh17CWrT1nNrSVsZg49wDIdT+Dvl6LcQ5aGT7
 AW01GyYCFUx7m4bKAb+M8P5VhEQYgGx7cMj13BM2LmLqUooJh9z5a28/1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="418787558"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="418787558"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 17:25:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="736630160"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="736630160"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 22 May 2023 17:25:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 17:25:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 17:25:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 17:25:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 17:25:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l0vMB2UUB1wA3XnKgE5ku2o4t1qXQyPMYUl4BMGeq1XynW4A0utEVM89nLZAc/SEhdOFhu+Xmvg2/enhHGZYqaUXYonbTH/MoIhy0ph4iSVQL2N6Sy//bSBS0RJLGI+rAQXuA4ecqgPqYNMZmY6A89v3utanLXHnyZTJp8gpu1bYEhwqFfR5f3l56/kl0Uc/7jDX+FlIcDe/PNLAoyYQi0YfLzsqk7M2v+/KYsfdCJ3vv86/3XzvSd3Ly03ANd5JwBoZdVjKMV3cTRCa3ab0sAJp6dNIOTZbMoju1GAtgbEAsV4J6ksJjXYK3GOiIZnn2NKX61PJSecdYuEK/VKCkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5lwUcmul3QSCpsEhoz2V2Fdo0imwmtPBI9O66az5Krw=;
 b=gc8Ax9MNuofa7/0/Yp9GEeI+YwN6rhLv+m/seIn5/K3INGe0H/OHWLHPWF6YXbOL7/O0nXMuZ1Li5DE95dZbeeL1UklwRJgtW+bHOo6SfY4hOsAb7usjFNSMd3Y/cy0PtNT8v7o56WnPfKjIEE/Bs/vB/1DRvszkNsSCMUR84kRzzEfawjpknePrkvtWt74VEbiSrgDvxFJlJ+Uc7IrR5XVxf3xXL85sY4vIXUE0dCVfLGc0SgosSAzX/KiKsCBTf4GqVTUhU3VuOqoljAI8Atlxzd9tXmV6BWVceX8+0d2bYlt6EQfEHaKui2R56tV4qEiQhJpuxhqrVpNT9MVcXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA3PR11MB8076.namprd11.prod.outlook.com (2603:10b6:806:2f0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Tue, 23 May
 2023 00:25:39 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c%3]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 00:25:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Move away from master
 naming to arbiter
Thread-Index: AQHZiVNMg6hK6+nZBUi+8ntGyJ/bTK9maDGAgACfHsA=
Date: Tue, 23 May 2023 00:25:39 +0000
Message-ID: <SN7PR11MB67509B3D09D52F7714B6188CE3409@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230518063612.1044370-1-suraj.kandpal@intel.com>
 <20230518063612.1044370-3-suraj.kandpal@intel.com>
 <SJ1PR11MB612964F24851D5BE8E8F648BB9439@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB612964F24851D5BE8E8F648BB9439@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA3PR11MB8076:EE_
x-ms-office365-filtering-correlation-id: 60573f2d-1673-455b-6302-08db5b243c78
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: neDG9y773sRdFMfMQ6fEj3T9v5d7Za6IMlgkkc6Pdd933PGDITEjae95pDbLJU1jlfeMMgphctzkZjMKFKXGY2VzYioEvF+9JfsATfB1e9qWG50/CcGnKbQo89hKOuuUde9mo9pfkhYt2N2lNdp6y2MizFxVLaabLFY0x6oUsq7j5n0tFnupQe2Ob0kxu4CNw0KjjLqmkp+WcUDy2iOtcB+3+eLprzEqrAVsn04/HA/SEKkXRc+ZdiTjbNLqHe+cRpA2hqsrQWS1JiFNqJiuCXrN/MAitPkYihebLaSxCLn45HcuemCMgMmA0MJdPoZts4gbo5orCvLVua6oqP1NJovXYm86WPV5XIOIvDoivOgKgKVODdyvPqmneCW/R4kq8VuRcOnYVuZGq5sE+XfTvwNhq9EksToa/GUOy+VjuSLL6TlPIv31QieojWEvQut6xQnhYnKzHdHvlGzgJQuwY7qEPxyAg38rkF712AXJTipQ33XHtGSnVQWnpEO1eahTCjTQT1KLQx+MSDoYuK/pCXtpAxFVS6yNcC7ZwQNWkXRm6DMHC/O5ukOFPk3t4astbnw8hMV3c3ton9FB2gQgFk5/rawGbdcdh6+oezE4vdQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(366004)(376002)(346002)(451199021)(86362001)(83380400001)(7696005)(53546011)(82960400001)(41300700001)(38100700002)(30864003)(52536014)(66556008)(8676002)(71200400001)(38070700005)(33656002)(5660300002)(316002)(4326008)(76116006)(66946007)(55016003)(2906002)(64756008)(122000001)(66476007)(966005)(186003)(8936002)(26005)(9686003)(107886003)(66446008)(6506007)(54906003)(478600001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Po9WRIW9gE+P/P08UCYFSabwhxu7ynHsRjHsc/sJpvG5zAegM0Aj0N7uywqH?=
 =?us-ascii?Q?45Wd4VO1nGxbOtckEVqWew5XmJSxsfsgzC1j5ncFFDp0yOD542sUWS4/USlc?=
 =?us-ascii?Q?NcHnFeekvwbAKyDYMP2KfGHPy+H5v77Dja19ojTCmqrYgn7zrtZmIbojCVvG?=
 =?us-ascii?Q?AMoafYU/OPu3HzWMu1Rle4nXVEy8z2KaB4hIYgpo7p9S0UOQzoiMXKnF6acb?=
 =?us-ascii?Q?qzPFyfj+OakEiTfdtJ3vPWVYKhHqgv4elKIRDLMdMo2ih+d7o9pd/Hz5ywm4?=
 =?us-ascii?Q?Sw9HRuqmvPNc759Q5fmW5QtslzUFtCohqAZ6vyGh49k06NezVHUEl+20rciw?=
 =?us-ascii?Q?HtuGXOwOhHuGQChL6zukRCRHmGhQaYWRIckzWEPKj7mvujaTq7mzNYD4HFzO?=
 =?us-ascii?Q?4R4GMVrTemp68ednf6g7LiU+xC68YHG17Hl4k4eTivF7AVe+vt72p3Tam5lZ?=
 =?us-ascii?Q?ADkVgoicbDu/cok+nkVS98UFkeeIndB15HDJRzQC3m4ZHXhAHskPXwiwT7tp?=
 =?us-ascii?Q?JMue51tymq5I5oqoTnjI6GbjiLpJTOspTQImnvb7XskG/NocEqm1+tGInLbr?=
 =?us-ascii?Q?vgrxjd3rrwDt+HLF4llcYQYCqFcTC2QaWq04dfrKQPOhiTF2aToNJVvYnnDT?=
 =?us-ascii?Q?zPpfoEYUSxP3JGLjwczQQcYEjfXlaAfZEAmvQFfUKLxeQG3Rez3bVX8bJEGB?=
 =?us-ascii?Q?P6YpUjTgaoJ+hZM13gXaZMpD97ElyNq5XNM5Y1cpymj1/U8vRCKqRhhiSVyK?=
 =?us-ascii?Q?1ufML8JAxOvl57g4loCT3kMi4jbO/oY5m8dWx3LD2/iN7yAbJPhUIytwlJ+O?=
 =?us-ascii?Q?kHhH0njx+lo2ekwwwAXdTh3ySi371JMLgS6XORJ3Dwcyq6FDatl39rq2xFzj?=
 =?us-ascii?Q?tfQzVG1pYFwLuRf5OnMF/C1MF7O7jkl468Wm0+m1X96mD+fkIhSFgaPe+AGQ?=
 =?us-ascii?Q?jLFtDog8unsvC1uaj9tgirLOviPb86S53ooK0q/jQfXazZQGl7LqDH8RnGwh?=
 =?us-ascii?Q?qqCFbBOtkohjAPcCxOHqzP2anbPAp30WsLhl+DNu6ueiXqu+Pa/dPyaJddSe?=
 =?us-ascii?Q?4CvNcD3LrH23A1KA8PsSy7+q8VCpaUZJHDxhHIWW8gyXSWzDqSpgBMBRFNGO?=
 =?us-ascii?Q?BIqGPgTMVCwrPYdjjVBdBoaH5+AYQuk9yPyFB4PyU2hTmpCLyWONE0qpRX1a?=
 =?us-ascii?Q?oDzFAAtW6SaOGixxPFVpFXnxTjF2uvVWq2g0TFwAcxgKrXQL1W79rC5AHhcl?=
 =?us-ascii?Q?nz3OepOn4AWF/ovdwyFkLzZyd+FrEguC58yLMYsERoJk6fTy5N4bIJ6kL4T2?=
 =?us-ascii?Q?ghlbOVIUcFNgGwaMINEa1xdMKRuW9djy6uS9ZPuUTaFt94b0uTBcJMoAQBHI?=
 =?us-ascii?Q?vNmjdsLj/Y6ndkHjvR8N0MjcE28AIOEn0yjJII3ZliqSy6vJmAb03IWJoOqo?=
 =?us-ascii?Q?vzmdaCOgFzmM1gepejnLB/ZvmcMDyZpgxaH8nxYZISWot1RR0xjm5GOiYA3h?=
 =?us-ascii?Q?d0L3C0TX7wOEYl++4YWW5gF3MJqJUIttaQ/oXmTMW4p9xk31mN62ae/BYIV9?=
 =?us-ascii?Q?hmpQy0PoJX5ZLOvj0Q0o55hQ+Wag6NIqgJs5Y/i/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60573f2d-1673-455b-6302-08db5b243c78
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2023 00:25:39.3946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: weDVUvgP2CBmVjcOxChcuttvMcvWkzpa9l9WVfU5Emq8YSkqsvqV+Efvmftp9GH7iMNc7fjzwAgUsUJdI+vybw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8076
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Move away from master
 naming to arbiter
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Winkler,
 Tomas" <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Monday, May 22, 2023 8:25 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Winkler, Tomas
> <tomas.winkler@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Move away from master
> naming to arbiter
>=20
> Hello Suraj,
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: Thursday, May 18, 2023 12:06 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Nikula, Jani <jani.nikula@intel.com>; Winkler, Tomas
> > <tomas.winkler@intel.com>
> > Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Move away from master
> > naming to arbiter
> >
> > Rename variables to move away from master convention to arbiter
> > master->arbiter
> > i915_hdcp_master->i915_hdcp_arbiter
> > comp_master->comp_arbiter
> >
> Nit: Can we use the s/foo/bar/ format to denote the replacement?
>=20
> The file  intel_display_core.h seems to have a redundant declaration of
>=20
> struct i915_hdcp_comp_master;
>=20
> I am guessing this was missed during the following patch.

Yes seems to have been missed will clean this up

Regards,
Suraj Kandpal

> https://github.com/torvalds/linux/commit/4f73dc7a079e15379bea0a70945b
> a1a7e5c16657
> ("drm/i915/hdcp: Use generic names for HDCP helpers and structs")
>=20
> So a good time to get rid of it.
>=20
> Regards
>=20
> Chaitanya
>=20
>=20
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_core.h |  2 +-
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     | 52 +++++++++----------
> >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 12 ++---
> >  drivers/misc/mei/hdcp/mei_hdcp.c              | 26 +++++-----
> >  include/drm/i915_hdcp_interface.h             |  4 +-
> >  5 files changed, 48 insertions(+), 48 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> > b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index e36f88a39b86..57f76321a393 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -395,7 +395,7 @@ struct intel_display {
> >  	} gmbus;
> >
> >  	struct {
> > -		struct i915_hdcp_master *master;
> > +		struct i915_hdcp_arbiter *arbiter;
> >  		bool comp_added;
> >
> >  		/*
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 19c0b779e435..7d43845d5157 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -183,7 +183,7 @@ bool intel_hdcp2_capable(struct intel_connector
> > *connector)
> >
> >  	/* MEI/GSC interface is solid depending on which is used */
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.master) {
> > +	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.arbiter)
> > +{
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> >  		return false;
> >  	}
> > @@ -1114,11 +1114,11 @@ hdcp2_prepare_ake_init(struct
> intel_connector
> > *connector,
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -1144,11 +1144,11 @@ hdcp2_verify_rx_cert_prepare_km(struct
> > intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -1172,11 +1172,11 @@ static int hdcp2_verify_hprime(struct
> > intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -1198,11 +1198,11 @@ hdcp2_store_pairing_info(struct
> > intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -1225,11 +1225,11 @@ hdcp2_prepare_lc_init(struct intel_connector
> > *connector,
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -1252,11 +1252,11 @@ hdcp2_verify_lprime(struct intel_connector
> > *connector,
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -1278,11 +1278,11 @@ static int hdcp2_prepare_skey(struct
> > intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -1307,11 +1307,11 @@
> hdcp2_verify_rep_topology_prepare_ack(struct
> > intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -1337,11 +1337,11 @@ hdcp2_verify_mprime(struct intel_connector
> > *connector,
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -1361,11 +1361,11 @@ static int hdcp2_authenticate_port(struct
> > intel_connector *connector)
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -1385,11 +1385,11 @@ static int hdcp2_close_session(struct
> > intel_connector *connector)  {
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_master *arbiter;
> > +	struct i915_hdcp_arbiter *arbiter;
> >  	int ret;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	arbiter =3D i915->display.hdcp.master;
> > +	arbiter =3D i915->display.hdcp.arbiter;
> >
> >  	if (!arbiter || !arbiter->ops) {
> >  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> > @@ -2109,8 +2109,8 @@ static int i915_hdcp_component_bind(struct
> > device *i915_kdev,
> >
> >  	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	i915->display.hdcp.master =3D (struct i915_hdcp_master *)data;
> > -	i915->display.hdcp.master->hdcp_dev =3D mei_kdev;
> > +	i915->display.hdcp.arbiter =3D (struct i915_hdcp_arbiter *)data;
> > +	i915->display.hdcp.arbiter->hdcp_dev =3D mei_kdev;
> >  	mutex_unlock(&i915->display.hdcp.comp_mutex);
> >
> >  	return 0;
> > @@ -2123,7 +2123,7 @@ static void i915_hdcp_component_unbind(struct
> > device *i915_kdev,
> >
> >  	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	i915->display.hdcp.master =3D NULL;
> > +	i915->display.hdcp.arbiter =3D NULL;
> >  	mutex_unlock(&i915->display.hdcp.comp_mutex);
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > index 4056bb2323ca..62e7bf0e1035 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > @@ -697,17 +697,17 @@ static void intel_hdcp_gsc_free_message(struct
> > drm_i915_private *i915)
> >
> >  int intel_hdcp_gsc_init(struct drm_i915_private *i915)  {
> > -	struct i915_hdcp_master *data;
> > +	struct i915_hdcp_arbiter *data;
> >  	int ret;
> >
> > -	data =3D kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
> > +	data =3D kzalloc(sizeof(struct i915_hdcp_arbiter), GFP_KERNEL);
> >  	if (!data)
> >  		return -ENOMEM;
> >
> >  	mutex_lock(&i915->display.hdcp.comp_mutex);
> > -	i915->display.hdcp.master =3D data;
> > -	i915->display.hdcp.master->hdcp_dev =3D i915->drm.dev;
> > -	i915->display.hdcp.master->ops =3D &gsc_hdcp_ops;
> > +	i915->display.hdcp.arbiter =3D data;
> > +	i915->display.hdcp.arbiter->hdcp_dev =3D i915->drm.dev;
> > +	i915->display.hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> >  	ret =3D intel_hdcp_gsc_hdcp2_init(i915);
> >  	mutex_unlock(&i915->display.hdcp.comp_mutex);
> >
> > @@ -717,7 +717,7 @@ int intel_hdcp_gsc_init(struct drm_i915_private
> > *i915) void intel_hdcp_gsc_fini(struct drm_i915_private *i915)  {
> >  	intel_hdcp_gsc_free_message(i915);
> > -	kfree(i915->display.hdcp.master);
> > +	kfree(i915->display.hdcp.arbiter);
> >  }
> >
> >  static int intel_gsc_send_sync(struct drm_i915_private *i915, diff
> > --git a/drivers/misc/mei/hdcp/mei_hdcp.c
> > b/drivers/misc/mei/hdcp/mei_hdcp.c
> > index 85cbfc3413ee..51359cc5ece9 100644
> > --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> > +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> > @@ -735,13 +735,13 @@ static const struct i915_hdcp_ops mei_hdcp_ops
> =3D
> > { static int mei_component_master_bind(struct device *dev)  {
> >  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> > -	struct i915_hdcp_master *comp_master =3D
> > mei_cldev_get_drvdata(cldev);
> > +	struct i915_hdcp_arbiter *comp_arbiter =3D
> > mei_cldev_get_drvdata(cldev);
> >  	int ret;
> >
> >  	dev_dbg(dev, "%s\n", __func__);
> > -	comp_master->ops =3D &mei_hdcp_ops;
> > -	comp_master->hdcp_dev =3D dev;
> > -	ret =3D component_bind_all(dev, comp_master);
> > +	comp_arbiter->ops =3D &mei_hdcp_ops;
> > +	comp_arbiter->hdcp_dev =3D dev;
> > +	ret =3D component_bind_all(dev, comp_arbiter);
> >  	if (ret < 0)
> >  		return ret;
> >
> > @@ -751,10 +751,10 @@ static int mei_component_master_bind(struct
> > device *dev)  static void mei_component_master_unbind(struct device
> *dev)  {
> >  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> > -	struct i915_hdcp_master *comp_master =3D
> > mei_cldev_get_drvdata(cldev);
> > +	struct i915_hdcp_arbiter *comp_arbiter =3D
> > mei_cldev_get_drvdata(cldev);
> >
> >  	dev_dbg(dev, "%s\n", __func__);
> > -	component_unbind_all(dev, comp_master);
> > +	component_unbind_all(dev, comp_arbiter);
> >  }
> >
> >  static const struct component_master_ops mei_component_master_ops =3D
> {
> > @@ -799,7 +799,7 @@ static int mei_hdcp_component_match(struct
> device
> > *dev, int subcomponent,  static int mei_hdcp_probe(struct
> > mei_cl_device *cldev,
> >  			  const struct mei_cl_device_id *id)  {
> > -	struct i915_hdcp_master *comp_master;
> > +	struct i915_hdcp_arbiter *comp_arbiter;
> >  	struct component_match *master_match;
> >  	int ret;
> >
> > @@ -809,8 +809,8 @@ static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
> >  		goto enable_err_exit;
> >  	}
> >
> > -	comp_master =3D kzalloc(sizeof(*comp_master), GFP_KERNEL);
> > -	if (!comp_master) {
> > +	comp_arbiter =3D kzalloc(sizeof(*comp_arbiter), GFP_KERNEL);
> > +	if (!comp_arbiter) {
> >  		ret =3D -ENOMEM;
> >  		goto err_exit;
> >  	}
> > @@ -823,7 +823,7 @@ static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
> >  		goto err_exit;
> >  	}
> >
> > -	mei_cldev_set_drvdata(cldev, comp_master);
> > +	mei_cldev_set_drvdata(cldev, comp_arbiter);
> >  	ret =3D component_master_add_with_match(&cldev->dev,
> >  					      &mei_component_master_ops,
> >  					      master_match);
> > @@ -836,7 +836,7 @@ static int mei_hdcp_probe(struct mei_cl_device
> > *cldev,
> >
> >  err_exit:
> >  	mei_cldev_set_drvdata(cldev, NULL);
> > -	kfree(comp_master);
> > +	kfree(comp_arbiter);
> >  	mei_cldev_disable(cldev);
> >  enable_err_exit:
> >  	return ret;
> > @@ -844,11 +844,11 @@ static int mei_hdcp_probe(struct mei_cl_device
> > *cldev,
> >
> >  static void mei_hdcp_remove(struct mei_cl_device *cldev)  {
> > -	struct i915_hdcp_master *comp_master =3D
> > mei_cldev_get_drvdata(cldev);
> > +	struct i915_hdcp_arbiter *comp_arbiter =3D
> > mei_cldev_get_drvdata(cldev);
> >  	int ret;
> >
> >  	component_master_del(&cldev->dev,
> &mei_component_master_ops);
> > -	kfree(comp_master);
> > +	kfree(comp_arbiter);
> >  	mei_cldev_set_drvdata(cldev, NULL);
> >
> >  	ret =3D mei_cldev_disable(cldev);
> > diff --git a/include/drm/i915_hdcp_interface.h
> > b/include/drm/i915_hdcp_interface.h
> > index 2059b066f8a1..4c9c8167c2d5 100644
> > --- a/include/drm/i915_hdcp_interface.h
> > +++ b/include/drm/i915_hdcp_interface.h
> > @@ -168,12 +168,12 @@ struct i915_hdcp_ops {  };
> >
> >  /**
> > - * struct i915_hdcp_master - Used for communication between i915
> > + * struct i915_hdcp_arbiter - Used for communication between i915
> >   * and hdcp drivers for the HDCP2.2 services
> >   * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
> >   * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used
> > by
> > i915 driver.
> >   */
> > -struct i915_hdcp_master {
> > +struct i915_hdcp_arbiter {
> >  	struct device *hdcp_dev;
> >  	const struct i915_hdcp_ops *ops;
> >
> > --
> > 2.25.1

