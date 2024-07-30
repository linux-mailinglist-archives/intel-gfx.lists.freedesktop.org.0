Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DBD94184B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 18:20:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373E810E2BD;
	Tue, 30 Jul 2024 16:20:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nz8Z/+af";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E1F510E2BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 16:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722356449; x=1753892449;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pld7UV0CjeSy5vZt2tnKC1Zyf8UdS44UfQlVoTLw3PY=;
 b=nz8Z/+afGza0jLEZpyo9o5sYjW5dX1vS4eJ/VF2TfVOYY4tGRYlxOX5e
 uEvqAX0MtcJ8TOALpi2rqRm4QHK8dGichT2wogYZLnlG7IvoonDQ6Zze2
 idZhzq/WnFvj/ntg6NFs/XI1oS5Nq2HaaS/1Rd1AC0a7QEN/DRs3Fqkfx
 uUlszW18CPBQT60hqXUN++mJ6qAMQtKFbyXeAhWq704tDdH2IlZrC9giF
 c4U+S33Sv17HRbdqLEWrvt9nUx/Ci4TOoZ1krqTmvq7jROp+4XZ7ySOk0
 vEc7svrmidU42wsLCxLj+ymmjxzeDp2ssIy+AQaZwuUvG7VUXLfj+vh+8 A==;
X-CSE-ConnectionGUID: srri9080TiGV3asAfhjPdQ==
X-CSE-MsgGUID: r/OOv0cbR0eU5tcBgRxcdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="30814845"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="30814845"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 09:20:49 -0700
X-CSE-ConnectionGUID: unMxa6BYSjWRofN04C7vOg==
X-CSE-MsgGUID: EZqNBTWVQM2iJw7PhOOxAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="58530026"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 09:20:50 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 09:20:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 09:20:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 09:20:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dC1t0BXC9Dgkn0WofafHUJciTTOIOqeqoaDGfyqk0VXvq1CsuzJxi1BW7luWycXOe1kcxy77F9i+I7hxvH/ZbGemuNHoM4a7XwaD7NlRTW1BlDjtaYwUsiaOefMxHm+bhRcpziibza9/Pf21gx0NWhZjIkTtvhaFkJcik2Sv2vKT5x7mDjepy+bHFc10tC6VI3WJ0zaZZIYSqbansdkJV7ttPWOd0xC2PzMzXfklOKrDv35pLuG6eqTT0LPrXsYeV2mQu+Ze7+Lj1rhbx4XUkpQoo8rfqZR3t1MQLtyXb1pKG9uCjl50bcHMkPkrLZxNrf3IChAMAuzY88A4/adRJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wpJ2zptfD7PzQXp4KrQZMMHYIOe4qZSORWxfNIkDwA0=;
 b=pqGoIDkoaSyGgWZpOsRinSiEXDWsp7ILSD+OU8f6triwQsO2evtfw4NSCLf5Xksfe/KAtX7fvjd2w0peXo7ZUbzt7gIY1myYOyaFGPTx5Us1RdYgOBf1v7kGz1fCGxrXNhaUV45W1sZ+ZhD8KLVMcciSr90NZvmMxa156dhzsEMnKxieszcqX4Ed9TYeuEexg1cDR/8EN9v3b9H5YJD6ToUXYXuHDIxzPTTEYXimsoB8XQXau+w9AUzOkFpz8aoPXfGYdpuitHVDEX/rdlA8VjzC98RcmAVEMcZVsnzZaK7eHNrnCzkrZLRMG9lIC5gedEisf1Of/QjOAqWfRjaGDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by BL3PR11MB6505.namprd11.prod.outlook.com (2603:10b6:208:38c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.19; Tue, 30 Jul
 2024 16:20:44 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 16:20:44 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
Thread-Topic: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
Thread-Index: AQHa30HmvJoGgNaKs0qjT7PQkqntHLIO7YCAgACHd2A=
Date: Tue, 30 Jul 2024 16:20:44 +0000
Message-ID: <IA1PR11MB6467BF0040D39693AB9FFDCFE3B02@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240726095357.1261804-1-nemesa.garg@intel.com>
 <20240726095357.1261804-3-nemesa.garg@intel.com> <87frrrxqh4.fsf@intel.com>
In-Reply-To: <87frrrxqh4.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|BL3PR11MB6505:EE_
x-ms-office365-filtering-correlation-id: 6c4d8f0d-a6b6-4777-6641-08dcb0b3902e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?A44bhmrdtgGo62Lfh0K/AtMNijtm85DjOBtTdeUwfJ1CsqOuLifIs9L54hTr?=
 =?us-ascii?Q?V3mY+d56CDUtS3BlxEV5KvVdqNfhm7fe0vsiMuGtKIbJZHHz82X9evgxUH2R?=
 =?us-ascii?Q?7eE4uWKmh2EcPj1x6dHo7qlifq1lQSABV2dYvjV71XMrqctNyYE40bNkxW0M?=
 =?us-ascii?Q?mC5zsMN/SU4pFtM/lvVoL5w8JNG1xcLKV85c4BbjQZtnJ74XWmqjvsYRs7Ok?=
 =?us-ascii?Q?N2ygYBj5+paEDzvJETi7IELRUOW+Sacuw+ir7uTcb4TeHoMUFKjGrKFqnFMP?=
 =?us-ascii?Q?+B510+2QNhd6+27mtW2UUgNiGHDkUnracHx/I8Ev5aeS0TGCQBRg2xZc3sk/?=
 =?us-ascii?Q?DmUd7/kwrNahr8Hme5K++E+kMmaW193QsNbVeOTN5DP7KrFlfQQS6L5X9yjW?=
 =?us-ascii?Q?IOdKTmkZWvzNPB/+CEbIP3u/3pND/htrDdCx2LV5ADi/dc6kf/gHYXJ0lA6O?=
 =?us-ascii?Q?HyhpNgL+sN3Dz1Ih68jUXj4+KHXoP2zNc/2v6ESYVPIrovmZLEof13WPWc5j?=
 =?us-ascii?Q?r4KClAU32MHh8iHHkUQTOa3IirFpd5AEMLveZvgrC+3UEG7nhMxcLEn+XzN4?=
 =?us-ascii?Q?dpgh0ax6W3oidT2H+VBAzrBVfSCTEKRgVcHIYXpqsZk00QFKQS4gKeBAus9O?=
 =?us-ascii?Q?zpYYYutX5LV4KKLPTxl6i4nsmQzwCvNU7FmQ5nnSc+fHjH4I3QtgFnoPwnNC?=
 =?us-ascii?Q?KlAYRnnxyNnrffxkC+273mrZMFAx+5qy/2XkiM3eHZY7nTmyRzBWItvyiIFn?=
 =?us-ascii?Q?Un8Tn9p4gUxtkgUf0ynNrmrpLb0NRY/7ISK1Px4SN54Fl4PmJoBE4ezRDMu2?=
 =?us-ascii?Q?4nbH1dFfumR3A7upXz0Sy0S3Au8LzJjJkR/Ug0GD12kYmobXl7CKiRMUpPH+?=
 =?us-ascii?Q?JG03rO319jCnuEFv18ihVi0Hz1QzTFY4N0PEhAJtQj5daJqdgfs707DKBsC2?=
 =?us-ascii?Q?iYVbsdkTa2LQilitVvvXWcjXIlPyTkTLTWFKKNDtghjklx16YK5lSZiecnhE?=
 =?us-ascii?Q?ILA7P4ZyaXrdbcjF/DAFyESDNLZxWn6VgD2svTGqz+00+LR5AnpeC5MIeHub?=
 =?us-ascii?Q?9W7F6SypTPpk/zscyguV9zyzHyEjbmq76400muCBD1DjQM4ITO+1oxpQRp8K?=
 =?us-ascii?Q?v3XWHFgHqC3W/6RdG6ePa8R/uhRz7omKdpxVXQiu+CKoRmgNh2Xc8JLGf6VF?=
 =?us-ascii?Q?IheMZNUgwwxe0Vl2/8qZP4LOGLA2hbkiolzvliGdJUPmli/7yvEPav0IyF7A?=
 =?us-ascii?Q?Nw+r6Qo/4R3o+d+Phf13Eh9mGNqMWVOXRa6WYI0W3vVpdtGZ7H9my5BU1VJ4?=
 =?us-ascii?Q?OnCNnz7cg10q1Ydo9Gx46dmfEf7yqED95iLsH1CMa2tdKw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HPNFvBZISMb4/aBtUiZ7kWmeVpZlJkrEaA3bMVDAyezxyDoH6jV4klf1mkJe?=
 =?us-ascii?Q?FO+cHhsC/OFggtWxLS9i8Kieqn7UWCP20HAylLd/z+DIzaXGiroH5GEUS5s9?=
 =?us-ascii?Q?kuOUmQGT42/i9xXIFp265X60y6kaaVdarPXELmoEsfSKaJMn1zDqfG9z9g5W?=
 =?us-ascii?Q?pi6RRzBJeDJ1F2AKJBknCl2rSdw6+YPv1xGP2e4XCr+4kAXZXEi3vkAeH7jH?=
 =?us-ascii?Q?7Pu3tfOjryijfAjIFM/jKD5aV5mAp9acCfqeaGt5qhHW9Gr3cuCoulHklYHi?=
 =?us-ascii?Q?DPecZ5W9Gefs25IjxPnOLjxg3dv3cMPB5YWlA+TfU5O9ig3n3bmjDX+EDeqO?=
 =?us-ascii?Q?u5DAStyYLzAMQL5VZNRk5TgSl5P3DVAzStH0NQHFMqphDrqvqo+e7IwlNW0w?=
 =?us-ascii?Q?vtx91RGlcAoFLboVzCj8PmcI9HmDanII3KqBSNcyB8YvLWq1uEtBXXiEPFGc?=
 =?us-ascii?Q?ZwFq6BQq8DfmuZIzImH9CGJnpARcb+IUFDjduKq103oKjbQujafo+630IB4d?=
 =?us-ascii?Q?iblYexFsowEm5i+4flAttziJJKVC4AO6tqAo4x4HATs8MU9HYawLiGTGg9fV?=
 =?us-ascii?Q?VmfUQUx2jk5+KO49s+e/LC+iP8Qhu/zqIopVmSEASKDevPYPnr+3maU2Alvy?=
 =?us-ascii?Q?/joAImqEZ3rjJPjBwsvpmSVB6QlA4panyTG6rZk8ciLrqVv61dnoiEgh0GiK?=
 =?us-ascii?Q?fFn5ixUJLkVpT4Ni7w/VA38xGwBJU6F8E5wpAHWN+7U2DJws/1AZan2S37bH?=
 =?us-ascii?Q?aRVfT3qjvttwcQWf4uX9WMtqVryhb/0zz9EauvCVpi1WtBe0TNA6ve5avKPE?=
 =?us-ascii?Q?v+8cG2I37ithy72R5kZMHCD3WkjXTpqFMwSo8kAlVpGYPkSP2V1PIxZGdKiM?=
 =?us-ascii?Q?UP2USRJ6d4tJomhL2stAvO04d5E+5BAvygRwwj5/TUvajM8dWe3C1DLD5jql?=
 =?us-ascii?Q?meK8S2W9TXTL/K7wKj46CAZbCirj9uOiuBq7WKCnLPhhvV4uyWEUhAHusmFe?=
 =?us-ascii?Q?4hgypihf2oFtNqcJV8CyyJd2sxfA5cUCiHmno88fxA3lZC9L4zPd6rHJqGOF?=
 =?us-ascii?Q?bdoRkmbbvtD3fTVQytcY7zXmKej0gKIypj9ynWrWS4S6iKZ9AnzRXVDQLIi3?=
 =?us-ascii?Q?N8La5fhJk5YuIZLF1mu+CxNqE9Vbwz74f5osnl0WqXQMYq2AwWTKkfjcYYLZ?=
 =?us-ascii?Q?85JMCFyR8H7/J/EulNzfbqktCyr++BNg7IUagvjYOwElAFaNi7lprxS4mi0I?=
 =?us-ascii?Q?AJSCPRSWX3oBGdfNOhFdqYJa1YDD60EIoL/+1iZbvY68YLT1SsE2Axb1Egdr?=
 =?us-ascii?Q?LejN+vgkc3WLnlXYm4F/dydy3jA96jJFmRyNtPh42q/6PkBjRK4tWZxrFaSl?=
 =?us-ascii?Q?N/hSxKBubpeSDjaTt6eMKBk/7erStfxjwBf6hvsarORHiq9TsTuwG2qwpVO5?=
 =?us-ascii?Q?amyESjaC2pBirQPlLwTUwYZvdUBxPSLYMY9c0+kc67ak7uzqcKlSI6bVhJMI?=
 =?us-ascii?Q?PLfg5FwOyUMm+vHE5LBQkq83QbAADDSu437nn64dFXqjeXMHPBu3/SlsLgUQ?=
 =?us-ascii?Q?8Jy5GVxF1eVyJuU/E8vPnua3vAzhXIlbDGFk5kOs?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c4d8f0d-a6b6-4777-6641-08dcb0b3902e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 16:20:44.3958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wh1jWJEx69WJ5cAUaMY3xypmGAUwlirEC5mr8NM6jqJfx9j65+8inaoFMmCLKp+crf88ex7JzHceykojOLdkSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6505
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, July 30, 2024 1:27 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: Re: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_c=
onfig
>=20
> On Fri, 26 Jul 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > In panel fitter/pipe scaler scenario the pch_pfit configuration
> > currently takes place before accounting for pipe_src width for joiner.
> > This causes issue when pch_pfit and joiner gets enabled together.
> >
> > Introduce a new boolean flag is_required which can be filled during dp
> > compute_config and later is used to compute panel_fitting in
> > pipe_config. Modify pch_panel_fitting to handle joiner pipes by
> > adjusting crtc_hdisplay accordingly.
>=20
> Superficially looks simple enough, but this actually adds a bunch of comp=
lexity.
> It's not obvious why encoders handle panel fitting in completely differen=
t places,
> or what "pch_pfit.is_required" really means.
>=20
> BR,
> Jani.
>=20
Hi Jani,

In joiner cases we need to do panel fitting calculations after the calculat=
ed pipe src width.

So one solution I thought of is as mentioned below:
For each encoder first panel_compute_config is called and then intel_panel_=
fitting.
So to simplify this I am replacing the  intel_panel_fitting  with the flag =
and then calling it at one place in pipe_config.
As done in trybot patch https://patchwork.freedesktop.org/series/136483/.

Other solution can be let the flow for panel_fitting is same for non-joiner=
 case for edp/dp and if joiner
is enabled call panel_fitting again in later stage ie after pipe_config.

Please suggest what can be the better solution.

Thanks and Regards,
Nemesa
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
> >  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c            |  7 ++-----
> >  drivers/gpu/drm/i915/display/intel_panel.c         |  3 +++
> >  4 files changed, 17 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 8bbde03f2508..a7194a84b6b8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4796,6 +4796,17 @@ intel_modeset_pipe_config(struct
> intel_atomic_state *state,
> >  		return ret;
> >  	}
> >
> > +	for_each_new_connector_in_state(&state->base, connector,
> connector_state, i) {
> > +		if (connector_state->crtc !=3D &crtc->base)
> > +			continue;
> > +
> > +		if (crtc_state->pch_pfit.is_required) {
> > +			ret =3D intel_panel_fitting(crtc_state, connector_state);
> > +			if (ret)
> > +				return ret;
> > +		}
> > +	}
> > +
> >  	/* Dithering seems to not pass-through bits correctly when it should,=
 so
> >  	 * only enable it on 6bpc panels and when its not a compliance
> >  	 * test requesting 6bpc video pattern.
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index a04d52dbf6e1..a4ab26d8fa43 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1258,6 +1258,7 @@ struct intel_crtc_state {
> >  		struct drm_rect dst;
> >  		bool enabled;
> >  		bool force_thru;
> > +		bool is_required;
> >  	} pch_pfit;
> >
> >  	/* FDI configuration, only valid if has_pch_encoder is set. */ diff
> > --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index d0d878da71ee..d892c5a429f1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2922,11 +2922,8 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  		pipe_config->has_pch_encoder =3D true;
> >
> >  	fixed_mode =3D intel_panel_fixed_mode(connector, adjusted_mode);
> > -	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> > -		ret =3D intel_panel_compute_config(connector, adjusted_mode);
> > -		if (ret)
> > -			return ret;
> > -	}
> > +	if (intel_dp_is_edp(intel_dp) && fixed_mode)
> > +		pipe_config->pch_pfit.is_required =3D true;
> >
> >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >  		return -EINVAL;
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> > b/drivers/gpu/drm/i915/display/intel_panel.c
> > index dd18136d1c61..0da45c2330d3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -395,6 +395,9 @@ static int pch_panel_fitting(struct intel_crtc_stat=
e
> *crtc_state,
> >  	u16 crtc_hdisplay =3D adjusted_mode->crtc_hdisplay;
> >  	u16 crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> >
> > +	if (crtc_state->joiner_pipes)
> > +		crtc_hdisplay =3D adjusted_mode->crtc_hdisplay / 2;
> > +
> >  	/* Native modes don't need fitting */
> >  	if (crtc_hdisplay =3D=3D pipe_src_w &&
> >  	    crtc_vdisplay =3D=3D pipe_src_h &&
>=20
> --
> Jani Nikula, Intel
