Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F859603AE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 09:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1891110E259;
	Tue, 27 Aug 2024 07:54:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gmMAw4xC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B54EB10E2B1;
 Tue, 27 Aug 2024 07:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724745285; x=1756281285;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=h4eZzjqSthP9Zfr6spDDvM3HlDESNUYECaTI1/OaW6M=;
 b=gmMAw4xCW2Jc3mcmVws8jZNRg1uHGWR0qvPRXs3ZKXqxKA5QWgEz6FLa
 7P4zWHeqKkixTon88D/9QtU+ezepyzfRNPhqMsctIbL1MZx4mo5gZG0sC
 VJdkXMW+WoHhNAEE93EEFPtAB2e2y2SgsWE7pRYNFb4dmEqPPBLoFGWzf
 jYdU0orIE7gw0IZhAr4vMgjWNdD+kAp33sf07SIqR95PEQYJe9yet73Ro
 iDpAHRkT//um8wDPTN7CkxTHltRdXqy5FReMEqAHtuv9Rs0uK6W/umKRR
 A7gtUt3fF+cBzGHjRacqNkWPAgjPV9ODBs8EXNOdgkTIN+X8Oz07Qetnu w==;
X-CSE-ConnectionGUID: kt6VEHspT62xgjRdQt+tvg==
X-CSE-MsgGUID: 6Muy9W8jTH6+c6DrlmAovQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="33865757"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="33865757"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 00:54:45 -0700
X-CSE-ConnectionGUID: ZUoul9c5SPCPbZ8fXrDKaA==
X-CSE-MsgGUID: jmi5Hw6aT/qLm2WoorpHgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="93526239"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 00:54:45 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 00:54:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 00:54:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 00:54:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AZEFvEdaPXX7oc93NTlYNNV7e+hKFmVPnsttavrfej857sIJE6NBxKmTdPJKLdWsg8YZr+0htckYXu7y4wFitc2bhs8Lff9azhUeoe0kcQfz2UW9tXw0kbwRPl4EoC9E4quezXoatC0/kB+bVHYkBPaSnJoQYLQpf+JPVX3IUJkUshft9Vu0Eg+nlB6g4NPPUIQDCUEb1ObOAsW3ab4EabBBDqDqD5hrnF1zBnguTZr2icX4QmmY9YuUAcbXjTBQuqMYIGrtuRMip53xJIS+nws8wDUokJXNembr9tW4NI/HgKi37K2Hf+R27UYoYuy9B95V+FZaeOsUMCcZA1dX4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e7ZVCVLLEMQh+7JGyZW5N8qQV9L2cdermSJkocIX2qk=;
 b=ZUOoXaM21mx1xRvvLs/YUo+wRXDfgGU41CerjzpdK4PSBAn30JO4hI6UvOjl7t1lb5bUXrJ45CGjff7Qzs+42XwGN5aGIqCzpiv47FD8Sa8cm31GIEz//BMzUVsm8niWhTpRJvPFtoOUtnRDePg4o3aEiBre1QrtPtVXowIiWbtK5lsHmQNan+e77XZLvlCGTKV6rSNpZ/GPPw0X/zkDaxsrNfBAL2fXuI2ZHNf7R1ivUOR6Q6HvvBCESK+RCvVWQCDlLafywIcud5HXNClCQvT77dsY6eCRZfoEtaeFovtM131OsYKYQlHdBzPzUPz1oTxYhQm7ndqW/n5UTPL9iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DM4PR11MB7325.namprd11.prod.outlook.com (2603:10b6:8:107::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 07:54:43 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 07:54:42 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: BMG supports UHBR13.5
Thread-Topic: [PATCH] drm/i915/display: BMG supports UHBR13.5
Thread-Index: AQHa+E19ccFM3DauwkmyLvTUfA2Jp7I6uDCAgAADLRA=
Date: Tue, 27 Aug 2024 07:54:42 +0000
Message-ID: <IA0PR11MB7307E3C377E8F3725937B7B2BA942@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240827064047.132278-1-arun.r.murthy@intel.com>
 <87a5gy1ki6.fsf@intel.com>
In-Reply-To: <87a5gy1ki6.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DM4PR11MB7325:EE_
x-ms-office365-filtering-correlation-id: dede3a42-1653-420f-8ff2-08dcc66d82e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?cWaaNpiFGNKGcpJxE8iU6XkT1RPLvOpc2ErRstskY9smu18JKYF1VhRaEE6L?=
 =?us-ascii?Q?3BKxBsQA5esRX0IHQrJ89i/NL4Vf9OwF6FtxKpk71S10ZdSz6gfcXyt2BxXU?=
 =?us-ascii?Q?H3l7/aMNryGPSf9hIGEaoxcsuVaH649+gdUPhBepOd40NSPHM0OrMBMoqPys?=
 =?us-ascii?Q?RW9g+h5SPmKZO3kToj5+XG/+VkJ6bLkb0E9qpYVs6dmBz47WE6UEcX1Sg9f/?=
 =?us-ascii?Q?qag3VgbhKeXgbQjWpbOqCp5FFwSY8p9tvfArCG4v5/t/JqTAyvkTCR9OU9X7?=
 =?us-ascii?Q?cabfVDoJToav9QBpfzbC83OAxAo9RD5FYMmNbuktcjLnqxF9qL+R/IscCo9g?=
 =?us-ascii?Q?cu2Dz7MEgZ/HZfLG+jdHTFSVHsiXbqXGkDopDTU4q/AyjoOTr5AxT8sSMt9h?=
 =?us-ascii?Q?OuiIMgpjZq26L0Ye/qHqLVvLbLsitOKH0yh9hCjzAMgrRnSwrIbxyWUyxF37?=
 =?us-ascii?Q?GSAKmRzSWJg+klQfT3lMrZWkYhNSPLNXa2txgmUYX7xB4drRMcyIKp3b1Zg+?=
 =?us-ascii?Q?ZHbQOgFd3MwyBTLLxMyXs+Ah4cAZlLb8HhYkjwoRYQi8p7Ln8qBn5/l+tmls?=
 =?us-ascii?Q?HmXc02ofJAnXd7dPKAlFbLJPGflfGjVmVC07lnqlQffnDQDFAj/Di6EavpDx?=
 =?us-ascii?Q?huZPteK1ylMrItAok5rBDfT0rsP5tHHJG8eBm71aq7L+5TJ2LTn2z001OK1s?=
 =?us-ascii?Q?RzFpZcSXcBX7MJFNQ4h971y/A1+C6b3MnrDmC8FAgXqGm0Rt4DyvpifOi0Lh?=
 =?us-ascii?Q?W40gab7gAs05y4K42+Of4Anm0x0cubmfGNL0Qbmi+0hjLJSy8xezRV8Mr4Yf?=
 =?us-ascii?Q?X9BERL6WBdLuNtkoknj5dGeTFcddsLwCm4GNUtY1qnvKqAohHH/pRGd3uajI?=
 =?us-ascii?Q?ivDmZfO6hfTFPHIVp3MVYH2eSey9sCuZ3GNbkuJXE6rQlB1tuJfWEk2RjkWB?=
 =?us-ascii?Q?07ieHas1uGt368RtGMzyi6B/ZbXCmbVn0NtTzvmjOzvmy4XjbN8zpBIdWGa5?=
 =?us-ascii?Q?oOv2+FKDEnuQT6adI8+6w6TIBduON+htOcuSUKTEA6z77cozu0BtRFY0x8ma?=
 =?us-ascii?Q?WgNorQWEJRcDwmtHh9FvX97cj2VTL1bCVfnqdaO4sbLeAoAr3xIvilzy4fOC?=
 =?us-ascii?Q?2qGwJCRQLzi7XsRHBRZ2Hbh7g0OHAEdNo21Ve8jHpFDT7UZsUoaTCsR9/P2n?=
 =?us-ascii?Q?vZZWYpfmsFCUOMYWQqRQmjeLinvEePTqsxwL0GTEGWiNWcckTUk5JGeStSli?=
 =?us-ascii?Q?KQZxM5XPwWgpx7iKYNeULDqd0XsOcIo8z3+c6IHClIdLfKr2tIQ4NAJZbB94?=
 =?us-ascii?Q?vdYDWQrxZ3P2uRytHItxuPgG7gCeGfysXsXAUrpqt5jmjlQFw9c2AsKH20ps?=
 =?us-ascii?Q?1N8Y4jNrDt3TS5H8lUjZ92A9Xd6wI+845e9BEv4wUHRwGDRDrQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?svr6oTRvLPRjo9NZfefPDHipW4XzhIqPbjUcKyaeNxK6BG8LUDQJlCW26Tfi?=
 =?us-ascii?Q?Ly0JAV+aM+CmR+fmihm1b7JkA2VbrWnO/JdfLdLsSrjJhq4xSLYRNAXrUrTp?=
 =?us-ascii?Q?oSMfD6ItJ9+doE+GfubdW4mEY9JerYcqMs1HP1AO59cclrPOWlMdpErG2GOv?=
 =?us-ascii?Q?Q4XNANGDUI+b8cvIJLqkXnc5TEVK6sXKP1A/a5LRZvfSurC9JeK3ZZtv85+h?=
 =?us-ascii?Q?JyzEt0eE+PTtI4hYmJOX26zY97xIMYvj5nZoSOht7KNs7XSFV5Bnc934bB6L?=
 =?us-ascii?Q?Tv1PIb016QzcK9CM+ncfNCnFJCjvRcEgWwCwDucloQ0aMV7fcYL/QmUYxeG3?=
 =?us-ascii?Q?/b/Oulur7LaViODMG03xvvjl7sbbX7HQIjwiNRTmFQs0pLVxKGwLMBmNLERc?=
 =?us-ascii?Q?itntguIHohKHcsbfsUkVgwv5wU32SXevpKrLfKXwU7WEy+l/rhbZolw32F/1?=
 =?us-ascii?Q?RiAnxFJFuJsMx33noBFda/BSPYEZdIb+HAeWNQScUDA9WFm7fUn2IihGk5Dw?=
 =?us-ascii?Q?e9n95CsLI5jY9ZzeQ/BNYRtdcWqfKaGVdWtCO2uB6UZT1Zgc/RsDDpZG/XKm?=
 =?us-ascii?Q?r+wcoXx2CkB4aA5RoM5DElnpG/tU4AVm/Cmsm/EtpkxAdht1Ks8GC7EoYfhT?=
 =?us-ascii?Q?wUR6OzWBHY3lh/7SqrJnouGusfu+upveZL8QVvqyroE9lzUSCRVvbda8v+fU?=
 =?us-ascii?Q?sswAmeX6E7/i3YUXdjskpwqXpm0YmK3bvHnT7Caq9LXius02OCMrZIqXD3NG?=
 =?us-ascii?Q?DE06VUtzFMRpfdmtE/Qfd5uDXYyIK7qg+CFFTQYDz3zJKVMWzlnXy1yvGR48?=
 =?us-ascii?Q?LElS4YpwcDyn1jtwww9HXxjzMaWQ6GT+9Lw503kJjXWsipCor4NAumHT/JRr?=
 =?us-ascii?Q?o5sr8YlVieDscVjqS+AwngbDU+V9Em+na3wDakMxO6D5P0BjZhvDMxy7KSSa?=
 =?us-ascii?Q?+y4Pj8jzPYZwdKKMwwkNZGYWtazxJ8WamKeNxXaQMLZwqzDR8HNyHHi4rVDM?=
 =?us-ascii?Q?9kQpIvGQZT0NlgDQyB6q6sPfrSu4UGh8BSFGfygaIV+A7l38oynwLbnya7gI?=
 =?us-ascii?Q?LluQjJ5NeI2zexS/9mWVwqIfNEpKANgdoufeaOjrprHQJT/y2SHyb76Tlsz5?=
 =?us-ascii?Q?SXa8Rsd6DnJgwdb7k+KJcAaSg5ng+8Fb5rkq6EELYvFEtgxiB1YxmXaW0gBn?=
 =?us-ascii?Q?pDNDTGg+9exzS43KkoEznGyv+Z9ae96xWYBUmtF8AeXzKKNmDDgm37ruUNcP?=
 =?us-ascii?Q?DavdS3lfnOfJzAHiSe8VrdydGEqsSNLnf3vjieOvTvYqWafUwzTFKUWDB1KZ?=
 =?us-ascii?Q?qNlnzO1sRADyYOjKxf1Rz4Gx8kfRhagAjSFZ66KEkH7By7lIYQjdk7ZnFfBQ?=
 =?us-ascii?Q?hAi7gVq+DErxCbJjNefWXHLmStm3o05JpFX23wXek2LQYZRvF+KfsvCeaTuF?=
 =?us-ascii?Q?uUn+v1srkW+4gKTCSyQTqM9M2o/CmddsFUaAHm3GAQ1auRCRqkaWtKVLvKuW?=
 =?us-ascii?Q?iwXB9M86z1dwhkB2jL7P0JAbvozMPeCP7dZku8t+9piSR9hRMUUy7q536Go/?=
 =?us-ascii?Q?b7C6muvsCG0iaJpFoU8BYE142CqDKTarBX25jxcIC5yB66j7EoTrsA5+Z+Tn?=
 =?us-ascii?Q?0FsNV21Ej2J5r3r8WSmhzoaqK8UoVU6VFR/ggIuiRzmk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dede3a42-1653-420f-8ff2-08dcc66d82e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 07:54:42.8904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u94qz3t1TQCQMwjx/bs/YwnA4n23fD2UOCy52f3FgQXigCgEPaE/twT/Bxc+6UMkVcijRQ5E1LmSV09OGLOxlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7325
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
> Sent: Tuesday, August 27, 2024 1:11 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCH] drm/i915/display: BMG supports UHBR13.5
>=20
> On Tue, 27 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > UHBR20 is not supported by battlemage and the maximum link rate
> > supported is UHBR13.5
> >
> > HSD: 16023263677
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
> >  1 file changed, 11 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 789c2f78826d..3232ec4b2889 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -528,6 +528,10 @@ static void
> >  intel_dp_set_source_rates(struct intel_dp *intel_dp)  {
> >  	/* The values must be in increasing order */
> > +	static const int bmg_rates[] =3D {
> > +		162000, 216000, 243000, 270000, 324000, 432000, 540000,
> 675000,
> > +		810000,	1000000, 1350000,
> > +	};
> >  	static const int mtl_rates[] =3D {
> >  		162000, 216000, 243000, 270000, 324000, 432000, 540000,
> 675000,
> >  		810000,	1000000, 2000000,
> > @@ -558,8 +562,13 @@ intel_dp_set_source_rates(struct intel_dp *intel_d=
p)
> >  		    intel_dp->source_rates || intel_dp->num_source_rates);
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > -		source_rates =3D mtl_rates;
> > -		size =3D ARRAY_SIZE(mtl_rates);
> > +		if (IS_DGFX(dev_priv)) {
>=20
> Why dgfx instead of bmg? Should be explained in commit message at the ver=
y
> least.
>=20
Likewise IS_DH2 / IS_MTL we don't have IS_BMG as its Display 14.1. One of t=
he way to differentiate this is DISPLAY < 14 are integrated and this BMG is=
 discrete and hence using IS_DGFX() for identifying BMG platform.

Will add this in the commit message if not other comments and get Rb on thi=
s patch.

Thanks and Regards,
Arun R Murthy
-------------------

> BR,
> Jani.
>=20
> > +			source_rates =3D bmg_rates;
> > +			size =3D ARRAY_SIZE(bmg_rates);
> > +		} else {
> > +			source_rates =3D mtl_rates;
> > +			size =3D ARRAY_SIZE(mtl_rates);
> > +		}
> >  		max_rate =3D mtl_max_source_rate(intel_dp);
> >  	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> >  		source_rates =3D icl_rates;
>=20
> --
> Jani Nikula, Intel
