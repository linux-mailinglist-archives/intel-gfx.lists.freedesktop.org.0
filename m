Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C39662B9F0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 11:48:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28EE210E460;
	Wed, 16 Nov 2022 10:48:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D5E10E460
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 10:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668595707; x=1700131707;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P9qPPMiuRLq6tdEgqX5IOrTpEj77br+Qx6Nu0Kbpnx4=;
 b=DF7X/+PUuLQ7OsYiV15GCkJsMEjPHTWAr+RAVBmkB6IL/Lhg3T57WqRM
 Wuv6KGoZo9UTT3OyJ/h9bE1RymNwzNW7UeAc+5cwGJgroxDpoRk7XauhZ
 92G406AzzlhjdoD45F6kEf/MyTY5QE9C39a2CW6ydMOdUFuu7ShbY0MAU
 yx95XRUaQTCtDcRBiV5+vf+CXD/KXTFIRD4wQHHiOoUBlBP7GuhOw6h8C
 RkSlqiKnjOvGXIIuhkrWRsQqcvW8Dn4qt/SQLBe1dxs794RgERb2yV1Cl
 bXXnzShfchNX4hSINTWfQ3hzJU2qrNgmS3i01w2Vw8o8mrwEkfWy7nvJr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="374646904"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="374646904"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 02:48:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="708116397"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="708116397"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 16 Nov 2022 02:48:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 02:48:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 02:48:26 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 02:48:26 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 02:48:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ciFYvPL3Wfsj0xRpuNh0oiRuEfEcwcF1KgCeyHB220k3lkM/hl1CYefmgBhrVQgokR9sHClM6NSiyoBHQIL3Z+fyRtZ0AJvXA493kgHiGGjKBuRx+G5RX4Ew72Bk1IJnzBtcP5gb7fWvzKCkSwSkCUIyz8UCvIsp9eLPpWJ2F0MxVcq4L76eE6nzYV1z20991MdbVBnO4z743XIRtin3esVRyp9rdzdTm5UdJrOXFyD0mNmWz3qKIOQxCniA6vawCLv4n0hP+MkKLyzoNNWekSmcENaBQEsDnB5V+VqJxA8HHplJDlDRJI13E507xbSKs0VyOeR9ZfNxGWR1O4E7cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pLETF7c4xwvCt5N2xN6P8eFa0o5AKYqlesR5WkRYcvk=;
 b=GTOlpjQ0kyFjXHkx12awEsli1pf78/k+Xy2NqirLE8OSJv5YHmqQNYifg10t3Qr+stgq58W91sE0mU+4CJ3yLlMIKk0EV1JrOY6Bo6FRZX9wec55shz1bRWCfZbIiL7Rkaa4Kbtrmo5dGmjY/g7hnkPNNfWYf4EtBtMX81OCx2XIBcEAnSto9m2O8f3baeeC5xI9YMQHNXTifaifbHoCbQkPPKyW4X/6YSm3Fy1Q3gQEC7ir1jNV7yosh9z9+c8AHZvycU4VYd21xkEELjtG2bOfGExD7rQH2aqu2Rf5CGsf8vNyHmtXH8vBdxRacp0E5Sq/nrsOZLoqdAZfKa6+0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1469.namprd11.prod.outlook.com (2603:10b6:301:c::16)
 by CY8PR11MB6889.namprd11.prod.outlook.com (2603:10b6:930:5e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Wed, 16 Nov
 2022 10:48:23 +0000
Received: from MWHPR11MB1469.namprd11.prod.outlook.com
 ([fe80::6822:6369:3684:b252]) by MWHPR11MB1469.namprd11.prod.outlook.com
 ([fe80::6822:6369:3684:b252%9]) with mapi id 15.20.5813.019; Wed, 16 Nov 2022
 10:48:22 +0000
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs.
Thread-Index: AQHY+aNVNJcPQI6yokCGKhwQrRAUjK5BXf7Q
Date: Wed, 16 Nov 2022 10:48:21 +0000
Message-ID: <MWHPR11MB14690212D27517518654B172B3079@MWHPR11MB1469.namprd11.prod.outlook.com>
References: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
 <CY5PR11MB62110AFEF4C220BD46AECCD895079@CY5PR11MB6211.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB62110AFEF4C220BD46AECCD895079@CY5PR11MB6211.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1469:EE_|CY8PR11MB6889:EE_
x-ms-office365-filtering-correlation-id: 984be1c3-3610-4c52-cde4-08dac7c01499
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: byIyYyawo9jfUAaIrXctqOz7JT3WoUw0r9LEcece+fDMAg1cnwEqH4ZWN0J2N+ETMGEwlT6ftdnTdVJUfMA85et679ilmYDIPpL7o+YZacPIyDulVxGt9C8YxEmgKvetRp7H9szrtk9wk6OlYomBwfVE1WElGwrs2Uuknmr5lBGIr3W2D0Pyp7jDlhixiViP+sGuwbHsDkQFHASS8kIrxKKL4mzRq/P5+jHxeibz599pvaHiuP8rmtjpr4Hw5hlf+DScrGYi5Uanuosd8uJUS7B2iHGrDdn3ykfJDuBVGY9Di9kroZtbkjrH1yaYxh6EPRkxrb4kGqr+jLqoAex5U8MKnGbYz/3t7Nl2IBXxAcpzVvQlXR2oRFOEeogMqBQuddAelJrf2vrmWUAtNerIc5HknXHNHVKyS665DnlcOOmIdD++r++Qj2YH3kokJuJt7O59pYzFCebwKkEL5ioQGcV4AKPw9IJb90BVUyNgdHpR3RkAMUOUhOcXieTsehrSM5WoQX/+bkkz5uJVRlqN8KKiAesM1s2FNl7WEbhthwTRV8hJxuflm4VwVUpxHCJcaWpxTKskZVXkrSa+xF8HdQz6lv5SoFaUkJK5LOjZzD8kZ42RKarsYTxxFPmbS1WFvRKCcs8nLX5zbSn4yt8B0H4UoHnn2zt8Z3Sb/hH4PjBTp7sJJErUnd/XRXPaEQMnhw8pmtrVs4AMOCBFj7jDuPIH5UBTPDpp6m2Mmn2YogMoAG1UJGNFDEdu9PjMTMhP0Q1z3xLDdsgbJKa5NStAzA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1469.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(346002)(39860400002)(376002)(396003)(451199015)(4326008)(316002)(76116006)(66556008)(66946007)(8676002)(64756008)(110136005)(66476007)(86362001)(66446008)(8936002)(478600001)(33656002)(41300700001)(5660300002)(186003)(53546011)(55016003)(7696005)(52536014)(82960400001)(107886003)(6506007)(9686003)(38070700005)(26005)(71200400001)(122000001)(38100700002)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+3fGE+oVvUSDtxzdVyIXSPGXgiE+lRHYFgVgq2OajLRDT6HWXjxLE7njw1jv?=
 =?us-ascii?Q?E98tsMeS1gfoHCEXuK4/ycs/npN29o2Amp+9JnOLu6cSqJsQ4ezvwXBQHhQd?=
 =?us-ascii?Q?NucOu7dJ0ZVXeIiTqnQyPblZts9tyt/RyJtkJu0zq0GpXE6Jx6NBToNnGgEL?=
 =?us-ascii?Q?0TzG+HymW9TRoPB5tIFt3iNXs4CwmoLONowEtBEg97jz6yuMy2eAZjZWNRwG?=
 =?us-ascii?Q?euSWXlWAKiJ6ELDz0sitkDZbc9puQSlCUo3E7GnPNraqvjEBxcpgG/Aa4s57?=
 =?us-ascii?Q?n/dX7FkuufpTPIWCq0JRIMrSZTIDso49suP93uv0b4QQLHolZvmu6f+J9RJr?=
 =?us-ascii?Q?qZVh90Dz++0uF2zAkgKMs+ta1lyTP7iqTRXVVQV/s/lkxL0Fe9dqM+s83ddq?=
 =?us-ascii?Q?DIb+wXjukjWGKiQ6o7a7X5ShS7Q9TyTySRRlazl7u1ICFp7jAQPDtmqV9Q+w?=
 =?us-ascii?Q?84l1gq4Z2Ytp23L1Kt2jkTmSorvtmJpsuNT3rQlW5yXzspvXYPdzxKxweKC+?=
 =?us-ascii?Q?M35/7oXwDfnTNtFQsmFL5CtaDqxzuCQwPtarGKXg4CiPlf5duDr43KbuzRql?=
 =?us-ascii?Q?HOhcAqGnPW8XB+MgFVSKz26hIJvSH1zxU0njtm630srUG+SrK8kLLd3CdbPp?=
 =?us-ascii?Q?pG+cChlqq2t+N+nP6GJQtdY7Q0sAJGPULX+dkl9DE2cFERVykUJkUtkHun3O?=
 =?us-ascii?Q?wel+SKafvumEF+7mYnESl84CFv5zwrT+/uFpkDDarvscUpOM08PYm3r5iR5R?=
 =?us-ascii?Q?Uo5Br5x1HUrDDggRVXNb338CWdcaaMFT6cLa/PF1L8JTvDTEobIbYwX48PeS?=
 =?us-ascii?Q?xHlavI37zebjD8nZz6fP4i6w8Bx53W23Smu9aeDedhKtjFJ1Sdqcb5/X9/Ca?=
 =?us-ascii?Q?MmkEb13/89EBwUMm26rJTmvaBWEuOjyW+/eQP3VO/Wm25jsathjFJ0Mr5AFx?=
 =?us-ascii?Q?s+LhCG8vA1NTGF1oTYJYcsduBEN04tJ17sG8cDGjz9YOWWtmFVDnEdI8x3K6?=
 =?us-ascii?Q?Gd3L9G+RG3DDv2XpdJ71V/AdREmPz9wLZLJLlo1NQ61CRTb9dN+ud0xsiZQa?=
 =?us-ascii?Q?xDhwl5kBGVTxC3VCikiPuhJEYgHGKFIwGJ1laDdGVIXmU73OogFe9bJxJBFa?=
 =?us-ascii?Q?odJiMtuByNsknGli0bD7xBBifk7/Fs8bTmaP93QFIUaJvws60Afprs9daXru?=
 =?us-ascii?Q?Xc9pQ8m+32LmXoUDhAMnzy9a2BWPQ5rxSEh+dep8QcNqipf4jRBEOs9gs4kz?=
 =?us-ascii?Q?Y+MSiNv+XkDPUUWbiTA0HmBiY/1jQ12JseIjnAFxM1QTO70Dc/9nTYxvjHgH?=
 =?us-ascii?Q?ZJKC1HQei9gHX7/UCaI14Irih3DL6kf2BiGQ5mb5JDfnozQihq12iXckmA6I?=
 =?us-ascii?Q?gK53ys8leSR1ekDVK4OapFHFw39XyNs1qWPmUyv05w1EfW+aF+NuXmQYOZ7d?=
 =?us-ascii?Q?y8Hgl1+MbBdBXpfbGjA8t+886SMZUN6fIV8LzNGNdCuiW1AKO9/rbpVm+Art?=
 =?us-ascii?Q?qG4vaywg4FEZBeAlaVREILn4UWVyt4V10nwDPBKEVoQn4vldy07hLXJCeZFr?=
 =?us-ascii?Q?cj0f8MUSPelIwR+Vy1jTrZoBLFhHj3Lwc/2Pq2kaRe2bFQkgOTfS0bGvcboX?=
 =?us-ascii?Q?3A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1469.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 984be1c3-3610-4c52-cde4-08dac7c01499
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2022 10:48:21.8993 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wOYXhHXOsGEm3mLRMzwRO4PQ7GtukhZs4OdFbZaS5eeYRUP57S54Xq9KDRJVZ2jNZh2dBG6W6uNCr2/8/hoH6yBN83EcuU8SGnEjRDDmy38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6889
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs.
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
> From: Gupta, Anshuman <anshuman.gupta@intel.com>
> Sent: 16 November 2022 15:38
> To: Ghimiray, Himal Prasad <himal.prasad.ghimiray@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Iddamsetty, Aravind <aravind.iddamsetty@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
> bandwidth via sysfs.
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Himal Prasad Ghimiray
> > Sent: Tuesday, November 15, 2022 1:39 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
> > bandwidth via sysfs.
> >
> > Export lmem maximum memory bandwidth to the userspace via sysfs.
> >
> > Signed-off-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h   |  2 ++
> >  drivers/gpu/drm/i915/i915_sysfs.c | 27 +++++++++++++++++++++++++++
> >  2 files changed, 29 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index c4921c9a60770..3ba1efa995ca9
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -6603,6 +6603,8 @@
> >  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
> >  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed
> > point format */
> >  #define	    POWER_SETUP_I1_DATA_MASK
> > 	REG_GENMASK(15, 0)
> > +#define	  PCODE_MEMORY_CONFIG			0x70
> Please re-arrange the macros in  increasing order of pcode command.
> > +#define
> > MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH 0x0
> >  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> >  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/*
> xehpsdv,
> > pvc */
> >  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */ diff --
> git
> > a/drivers/gpu/drm/i915/i915_sysfs.c
> > b/drivers/gpu/drm/i915/i915_sysfs.c
> > index 595e8b5749907..0a6efc300998b 100644
> > --- a/drivers/gpu/drm/i915/i915_sysfs.c
> > +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> > @@ -37,7 +37,10 @@
> >
> >  #include "i915_drv.h"
> >  #include "i915_sysfs.h"
> > +#include "i915_reg.h"
> >  #include "intel_pm.h"
> > +#include "intel_pcode.h"
> > +
> >
> >  struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)  {
> > @@ -
> > 231,11 +234,35 @@ static void i915_setup_error_capture(struct device
> > *kdev) {}  static void i915_teardown_error_capture(struct device
> > *kdev) {} #endif
> >
> > +static ssize_t
> > +prelim_lmem_max_bw_Mbps_show(struct device *dev, struct
> Please don't use mixed case here,
> How about i915_lmem_max_bw_mbps_show ?
[Ghimiray, Himal Prasad]=20
We need to differentiate between Mb (Mega bit) vs MB(MegaByte) ,Hence I use=
d camelCase.
Using i915_lmem_max_bw_mbps_show will not give clarity whether the value is=
 in Mb or MB.

BR
Himal Ghimiray
> > +device_attribute *attr, char *buff) {
> > +	struct drm_i915_private *i915 =3D kdev_minor_to_i915(dev);
> > +	u32 val;
> > +	int err;
> > +
> > +	err =3D snb_pcode_read_p(&i915->uncore,
> > PCODE_MEMORY_CONFIG,
> > +
> > MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH,
> > +			       0x0, &val);
> > +	if (err)
> > +		return err;
> > +
> > +	return sysfs_emit(buff, "%u\n", val); }
> > +
> > +static DEVICE_ATTR_RO(prelim_lmem_max_bw_Mbps);
> > +
> >  void i915_setup_sysfs(struct drm_i915_private *dev_priv)  {
> >  	struct device *kdev =3D dev_priv->drm.primary->kdev;
> >  	int ret;
> >
> > +	if (IS_DG1(dev_priv) || IS_DG2(dev_priv)) {
> This seems to discrete agnostic.
> How about HAS_LMEM ?
> > +		ret =3D sysfs_create_file(&kdev->kobj,
> > &dev_attr_prelim_lmem_max_bw_Mbps.attr);
>=20
> > +		if (ret)
> > +			drm_err(&dev_priv->drm, "Setting up sysfs to read
> > max B/W failed\n");
> Why this sys fs is outside gt directory ?
> Thanks,
> Anshuman.
> > +	}
> > +
> >  	if (HAS_L3_DPF(dev_priv)) {
> >  		ret =3D device_create_bin_file(kdev, &dpf_attrs);
> >  		if (ret)
> > --
> > 2.25.1

