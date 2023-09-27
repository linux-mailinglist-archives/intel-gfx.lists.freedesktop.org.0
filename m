Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 779987B0A0F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 18:26:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B170F10E56F;
	Wed, 27 Sep 2023 16:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB97F10E56D
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 16:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695832014; x=1727368014;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gqb9Dz7QL9GZABRhs+RgBAVC0qpaRmgn0lwHiUq3PHE=;
 b=eqzVfBflq6+wLTNTgxhFa6dHM0p7XHPhRo+Sl8C+x7xeEUfJZYPxAxcs
 A4UTO2Xe+mW3cg3luSGq9Fpu7xDtisqAQbvbs48WrP2R5/ii08QpFnmMt
 ezNkIhpmHqHa7aMdlcmx6Vq4exArcMZTu0Uf0c0v5YvdEb1gHgyZAFKji
 WveLqN38Gww1Ld38Ue5ue4a+dwRn88z6xzgnUAFgvjURljE1VG6Jebjxd
 gWXJaHsiqQI9uGCZogoIPTey3TuopLXCsekS3/oZMEJzUmd9NCV/I2Cm3
 /A94yvyjILke0Bxc1FYBSymnCwGpuuDo3/r0gkvvBjnFfXuzgpgd+k+UO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="448360728"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="448360728"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 09:26:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="698943661"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="698943661"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2023 09:26:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 09:26:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 09:26:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 27 Sep 2023 09:26:31 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 27 Sep 2023 09:26:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LMpmv7DmWISIGqZK520bkvbnX8spWf6nsYfHW3DEtpg3Nmv11cmF3kSHn3F0k/5uSJYl/EJkiNiFxZet7QNBiNro5CC24u96M4l4xmqX6neMBDogIPEa+Hb3tdKtilFmcnw9FsccXsBdrX9R+T1M4v71wzk7+FgTbDysz1aAA28b3w+hnZuvMxefYEdjTuCqcwxHjVj6r1XVXE8/AnWbInWFOjq2QYrgnU79xXhU7Qq2alOlJmkJxrQ1j/gkxxcqaTP+HrOWGXlrJrWRBQCE3tuqeeLCrSA26Hutk8itI+SUsAT/2/uuSZG3qiekRF1KEQdVjPA0QtKTzAN+EB86oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ne98KhgiSwoIiMdO41Cck8xejdy/W8rZS9unhbwIi5o=;
 b=PMcWaXaBMRU20cjYj11d5ltC0E2lCd3qb6SI9/XC72HfUEcshUPggf3RfmUI6mn/ef83qMEU3P9FZbrwE+YAv2d2LSZJkgOzeReOZ+F9AYNL1s/qig/KFMbqHBvDk7mTB4aQ/HhSIzW8B2/jvns53X6Ur97iCFZFG3NooPYwZM8IT0otQiqQ44a6Wqm9dvhvz38/VeAfiIz0CaCro5nAbHLB3OxB8fstdyaHwJqfy34LUwAUj1XfVm0fmwki5jwMoFKuMuLStqEqrQWRlrnVUSGY1r6qQVRpfFYkWEpLsWJtyp93mzl1rC9X5xUTRqpwlfQ0UBYhPwYuGw/ut/7TOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW5PR11MB5809.namprd11.prod.outlook.com (2603:10b6:303:197::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.23; Wed, 27 Sep 2023 16:26:29 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6813.027; Wed, 27 Sep 2023
 16:26:29 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [v3] drm/i915/display: Created exclusive version of
 vga decode setup
Thread-Index: AQHZ8K2b2Yo9JjGzbUuGtD/D14CPnrAuuVcAgAAii0A=
Date: Wed, 27 Sep 2023 16:26:29 +0000
Message-ID: <DM4PR11MB63609E50469F81BCA69ABFC0F4C2A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230926192054.1359127-1-uma.shankar@intel.com>
 <ZRQ5eodotSEMAKSh@intel.com>
In-Reply-To: <ZRQ5eodotSEMAKSh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW5PR11MB5809:EE_
x-ms-office365-filtering-correlation-id: 1cf268ff-8993-418a-2189-08dbbf768113
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DUQfvXDUXxJPYPyWCkJC/mSsehbTGZwF/quofATwIDVpxH2JaDqbUQGScsQ+QJtolowOw2CEBdnAGU2DXzDrzKHIazQVVn/MzaIm5AM/JqMvWzamizoP97c4RPmfQMcoYNapT2E6I3P6JZhESePXGPReHQzNiRVM+Yf895yaDVlO40MQrtyDxv3R06buBYzOQfhACmOmKQ5RhpXi3XxC/O7N+15BWg39HwER6dvq6x/Bl7TsUA3a6qeQObvOaaA+4SWCeAs9zmxXyenMCHxP3/JMOi/J3umAiIWMYX4z8GOShj1/sxoW1JV9m8ecqNxGLolgtC+85PGPVYNDTYEr2bN40lSblnx9L9hH3noiKE/HsONQ6InS6w48vBaoyhjlvXQH+CS7NqBz/x1zuWJL1kPq9xJHkQf0hQ59YokowtiCdH3Pq9ehyzl03xBU26e4IaWmiZmV+wDrTX7rqLveQ5kKCr3Joe11xMbzPpcDfTbleQLWUcci+/Ud5bQy3eDIvYK44J0tswgRBxS9iQ9o7LOjv/qHjmxfumh31eKgn4YW/OQGqrNi0YC0gQU0MaRtyaE5aRkWDmu9sPfdaM0G2WdfCPfjsxF6uNJ1zqJj3ug+UtrMmaJhd0NG6rfox4f7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(396003)(366004)(136003)(230922051799003)(1800799009)(451199024)(186009)(55016003)(38070700005)(33656002)(8676002)(4326008)(2906002)(5660300002)(8936002)(86362001)(66476007)(52536014)(478600001)(64756008)(53546011)(38100700002)(66556008)(122000001)(71200400001)(6916009)(7696005)(6506007)(41300700001)(83380400001)(76116006)(316002)(66574015)(66446008)(9686003)(66946007)(82960400001)(54906003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?2A1v9VgDKdxFCBytQ7XDGzwH2Trc8+zUj7QqGAebLOboflUP9QaPjIFGDM?=
 =?iso-8859-1?Q?7HQZOQlmytP7IoguVv5BqLeWIsFJcx58Y4pNfhQ1ds4F+NyzmX6n51bQA4?=
 =?iso-8859-1?Q?5pyT0uInD5+6FziESROru6LITtR/6glTY7IECa50wri26SjaofB+m1RROl?=
 =?iso-8859-1?Q?1NRkpv3rSZIEqtQ5CTJIhwZxegoDU57rlyu2ahTTdfyR3tJxTz96KT3FT9?=
 =?iso-8859-1?Q?P4AVUhSygrUJcQAnI8gYgztXanOtcLhpTNpySCBcMZz7ZfsL5N7H11QreP?=
 =?iso-8859-1?Q?6QW9EY41zCpnjnoZ8UfDCwoR+/tD5N1dvRX9p/EafGzpR0V/qU4a8yfG9Q?=
 =?iso-8859-1?Q?FBBzJ6F6seOPxuiLZ1VFXiNKLLYcwblV1wuARLkhlNA467c42LZvFHZFLD?=
 =?iso-8859-1?Q?SCWnuETkNWujDGctStHdCGTgYNSG7c54Jr8q71f2NVUeWRFZ2UBS4G4STN?=
 =?iso-8859-1?Q?L8Rie2pbunQ/moN7YnQdUJut3Rk+1TpmTmw+twbqLIftZYWckZxR3L+suJ?=
 =?iso-8859-1?Q?hhQvU//21/QQsigM8yX9cib7VuePzgIiGVrloZATMVeN7YxG9a7JTXGWvF?=
 =?iso-8859-1?Q?KQCwMYPH4wRZSBIj/LOvRnEsAnQP6+8w4pWQi0EDywfwGWvY+mxiDXIGeH?=
 =?iso-8859-1?Q?YdyDSjX8g1gFZdkDHCA1ynplzp5rFLwKT1N+cWoIAg8Fm0GdEAosQNQ3H5?=
 =?iso-8859-1?Q?XqGIQSCmE5xHYm342QE8Vhd0jAWvDLUdum/ajei9Tmm9gLvdC3frpIPpev?=
 =?iso-8859-1?Q?yHG1y7tAyb/ykfc5JgQ46dIDNNXCdYNvve0QjenU8ACqFwZ8EO8vAlIypk?=
 =?iso-8859-1?Q?eXMQNoQaYPwDcX/dG1IlB6MRTwDsMSWRCpo1vc4aCYw5UzUPxuaIKR1Dn5?=
 =?iso-8859-1?Q?syAmg4GCzEPaX47QPZoiwIu9g3fKgfLK6W5fKLLAKfJwLlhIknPG/dsd3r?=
 =?iso-8859-1?Q?BgGWzVQbClY9s0kYFjvugnxIg8v9Jm4GbWbd7M2OC2iFgmpy212TyTKqWT?=
 =?iso-8859-1?Q?AUj2V8OTtvl6VRVDZMdswi9VpXoVNSd9OEwV4ouLzA/+kIzvtn8MHlTuCo?=
 =?iso-8859-1?Q?6s96NqNnI0UIkdBcsA3TZ6gTEZNv+qtumDlxcWJ8CQioiMsw2cq5ocF1hg?=
 =?iso-8859-1?Q?BUuT7g1wTNtxOmIPq/VAL8va1qHSGX3Ocr2AcKdM7+4jZx2cWrp6tnZDVe?=
 =?iso-8859-1?Q?VfkMNfyjY+jQmbO2MP43c4hs/uIhQsCeI2Amf9vPRlM+U2kXC4TX5nddtQ?=
 =?iso-8859-1?Q?uro8xWT66IPlZpF8gwbwN6ZxLqOT/93yfUzCJaYqsGvvsRT34MmFHCiEYj?=
 =?iso-8859-1?Q?llQLjJ22jYUAGO+dUQM5tXxR2strERb82P9k4MmsZoHg385LgUE4GMJDOz?=
 =?iso-8859-1?Q?8eQFgvNtIFtIZuaIUPH/E9jhJensRDShgCIqmj0awoR1lhEJT0FVLCcc8+?=
 =?iso-8859-1?Q?69C80KM5Nyas7yK4Dtbz9F0C/4dPgq3KjZkeCJutk/1SiKTwthowiauZAY?=
 =?iso-8859-1?Q?vSdfS2uK+VHO2LVYKWlSv4mLVDA53u8wuZV1NyimOTNVcwKPiiIsFgmpFx?=
 =?iso-8859-1?Q?BvAlw8UYFhqCx693PusFOXofWjv1XH72oCnbzVgva0Nl7XEB8iQmCe6hw5?=
 =?iso-8859-1?Q?0KQZOrrw84dfXh6ROQjnLdcbyKDnTKabhn?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cf268ff-8993-418a-2189-08dbbf768113
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2023 16:26:29.5447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MzR6+kmTL+t4nlRQUTzzG5hQ9JMVhfzzxq/JaUOfJt+6lbZgq22FBFBso25aU7gf9U7M+vv9zUBHbkT5CbTIyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5809
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v3] drm/i915/display: Created exclusive version of
 vga decode setup
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, September 27, 2023 7:48 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [Intel-gfx] [v3] drm/i915/display: Created exclusive version=
 of vga
> decode setup
>=20
> On Wed, Sep 27, 2023 at 12:50:54AM +0530, Uma Shankar wrote:
> > Some of the VGA functionality is not needed by the proposed Intel Xe
> > driver,
>=20
> I wouldn't put it that way. IIRC the main issue is that X becomes a slide=
show if it
> thinks there are multiple GPUs that have VGA decoding enabled as it insis=
ts on
> adjusting the VGA routing pretty much for every little operation involvin=
g any of
> the GPUs.
>=20
> The fact that our current VGA arbiter implementation is just smoke and mi=
rrors
> would cause real problems if anyone actually needs to talk another GPU us=
ing
> legacy VGA resources.

Thanks Ville. I will re-word the explanation.
Also, this will surely require some cleanup on the existing implementation =
on i915.
Will create a task internally to have this tracked.

For xe readiness, idea is to just refactor this and not implement it for xe=
. We can do it cleanly
directly in upstream once xe gets part of the tree.

Regards,
Uma Shankar

> > while this will be utilized by i915.
> > Created a version of the function to be used exclusively by i915.
> > Xe will implement it's own respective version.
> >
> > v2: Addressed Jani Nikula's review comments.
> >
> > v3: Dropped a duplicate function (Jani)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vga.c | 18 +-----------------
> >  drivers/gpu/drm/i915/soc/intel_gmch.c    | 14 ++++++++++++++
> >  drivers/gpu/drm/i915/soc/intel_gmch.h    |  2 ++
> >  3 files changed, 17 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vga.c
> > b/drivers/gpu/drm/i915/display/intel_vga.c
> > index 286a0bdd28c6..4b98833bfa8c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vga.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> > @@ -3,11 +3,9 @@
> >   * Copyright =A9 2019 Intel Corporation
> >   */
> >
> > -#include <linux/pci.h>
> >  #include <linux/vgaarb.h>
> >
> >  #include <video/vga.h>
> > -
> >  #include "soc/intel_gmch.h"
> >
> >  #include "i915_drv.h"
> > @@ -99,20 +97,6 @@ void intel_vga_reset_io_mem(struct drm_i915_private
> *i915)
> >  	vga_put(pdev, VGA_RSRC_LEGACY_IO);
> >  }
> >
> > -static unsigned int
> > -intel_vga_set_decode(struct pci_dev *pdev, bool enable_decode) -{
> > -	struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
> > -
> > -	intel_gmch_vga_set_state(i915, enable_decode);
> > -
> > -	if (enable_decode)
> > -		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
> > -		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
> > -	else
> > -		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
> > -}
> > -
> >  int intel_vga_register(struct drm_i915_private *i915)  {
> >
> > @@ -127,7 +111,7 @@ int intel_vga_register(struct drm_i915_private *i91=
5)
> >  	 * then we do not take part in VGA arbitration and the
> >  	 * vga_client_register() fails with -ENODEV.
> >  	 */
> > -	ret =3D vga_client_register(pdev, intel_vga_set_decode);
> > +	ret =3D vga_client_register(pdev, intel_gmch_vga_set_decode);
> >  	if (ret && ret !=3D -ENODEV)
> >  		return ret;
> >
> > diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c
> > b/drivers/gpu/drm/i915/soc/intel_gmch.c
> > index 49c7fb16e934..f32e9f78770a 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_gmch.c
> > +++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
> > @@ -5,6 +5,7 @@
> >
> >  #include <linux/pci.h>
> >  #include <linux/pnp.h>
> > +#include <linux/vgaarb.h>
> >
> >  #include <drm/drm_managed.h>
> >  #include <drm/i915_drm.h>
> > @@ -167,3 +168,16 @@ int intel_gmch_vga_set_state(struct
> > drm_i915_private *i915, bool enable_decode)
> >
> >  	return 0;
> >  }
> > +
> > +unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool
> > +enable_decode) {
> > +	struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
> > +
> > +	intel_gmch_vga_set_state(i915, enable_decode);
> > +
> > +	if (enable_decode)
> > +		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
> > +		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
> > +	else
> > +		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM; }
> > diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h
> > b/drivers/gpu/drm/i915/soc/intel_gmch.h
> > index d0133eedc720..23be2d113afd 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_gmch.h
> > +++ b/drivers/gpu/drm/i915/soc/intel_gmch.h
> > @@ -8,11 +8,13 @@
> >
> >  #include <linux/types.h>
> >
> > +struct pci_dev;
> >  struct drm_i915_private;
> >
> >  int intel_gmch_bridge_setup(struct drm_i915_private *i915);  void
> > intel_gmch_bar_setup(struct drm_i915_private *i915);  void
> > intel_gmch_bar_teardown(struct drm_i915_private *i915);  int
> > intel_gmch_vga_set_state(struct drm_i915_private *i915, bool
> > enable_decode);
> > +unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool
> > +enable_decode);
> >
> >  #endif /* __INTEL_GMCH_H__ */
> > --
> > 2.42.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
