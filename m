Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 166DB5B6EC0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 16:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE18110E720;
	Tue, 13 Sep 2022 14:01:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 571BE10E720
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 14:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663077670; x=1694613670;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RI0nO/r28mEa1drLbMDcqIu2YB1XVOxMfG9izMm0qLY=;
 b=mlQ7nzNF+Fv9oDZbuYvy1jMvu3wkDWAY4FPHutyhPGwrUUfxdG+oUMBo
 twqVfKlLjII39ROkiFjBqcWOFWYXHbJ9g0yT6QXTuGwuMv0muKccUuqhF
 A/cALLEqIeQAS13IhzfSdp/OvfrYRntgRxcPiBAKuYf0NIyjYuzlLRUwF
 aExqOWaLBK5E5x54TqfJ7YLKmoAfVcsy9RD9sN/V2VHXSPpBxKbmoyNMp
 5SdcfritIA0jTfuTfLDWGjHL6DhyflcPP/dUbxHqUdlbtEmD/yq+874I8
 o+DS+B9GhJcu04WPjmPTIKPRnahDYNQgdCpCk3UBHGQsvfpeztKwkdR7y Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="299481028"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="299481028"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 07:01:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="861559028"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 13 Sep 2022 07:01:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 07:01:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 07:01:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 07:01:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C8IcmZMNEwqSeKq+9lzOu9qVWV1qmWul97CQdxce2q2NQ/a1pMCGQEvT1ZSG2lQRDhOzd9EH872pcH/3ih8wFQGU2JPaO0ko1C3DT4jYMYfCE1UW/7oCNErArHbDTz2KdAf1M6gaX5sQOCi8bzHOB4gzM7ktTA7Ts3M44AefuVq5xADlJQPODuzrhyeKzOYBklqC12GdkEsNkCH/H6iu6XihmtnATIsc96edgsYMGFHt4c0bUSg+EtPyE0zy0oeAFWfh7dTDLnEpZjPZt+AzqXC8fVfH+PGjwshwc6OPylYlHHvDW/638SgaHmNQd1ogEemqH8KNgt7CioyK9UioeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QTzVSmUjWSMAiQmI1OZTpBe2zhQb8oSY+nLAZVZBvSE=;
 b=KtVJSLFcF3ZEmGE05izoULWvZDoY1A8Mb/0iSp3lly4bG6HcSt576dUMATSJ+0G0lKT3HUacHLU/wUp0Ypsr/X7F8PXXCdmUDVez+yNnnX69IdWcatmXy7hage+34q20RfrpPsxySxApD0veWi3Amm7nJyj3CimQYs1DYuV17r3mLs9aaNNDxRAJwZu7YQ/z7wX+RgWToTVVBpWKbdsk8Kmm16njXAvphiJCT5f9fcTeTo1NzrGmaG2zb57+qfRPb86GEv5EWABI87a1I5J5W8H7LZV+zIrZumTMBJ9n1Bu5kmfPhY4TrkAkDs5MiOUEr8TndCtp2UQId8uSXTscNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by MW4PR11MB6935.namprd11.prod.outlook.com (2603:10b6:303:228::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Tue, 13 Sep
 2022 14:00:59 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed%7]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 14:00:59 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 2/2] drm/i915/dgfx: Release mmap on rpm
 suspend
Thread-Index: AQHYxqJ67KFwp4r0tEisN8g9/+D8na3dXIOAgAAISkA=
Date: Tue, 13 Sep 2022 14:00:59 +0000
Message-ID: <CY5PR11MB62113ABB6CBB7A7D4EC547BC95479@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220912121306.24926-1-anshuman.gupta@intel.com>
 <20220912121306.24926-3-anshuman.gupta@intel.com>
 <YyCFywmnx2kpgews@alfio.lan>
In-Reply-To: <YyCFywmnx2kpgews@alfio.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|MW4PR11MB6935:EE_
x-ms-office365-filtering-correlation-id: 61b5b327-7044-4e60-f6b7-08da959062fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rsHMM1CKZ9mFKENb3KtSqtGQxLUUp5MSznbR85YT2o/hRCz0zoF83208ck0Mm9r59Pe/VM5O+IQUyok1uPJ9B/KCO6iCybRo8m8pm1zIyzsFS39C8S5gnI8I79RiQZ7h/8aFlFG1BGnGKYERnHkdjnlLVnF0GKkLoaSHwlkS15Ih4lSB+haUHa3uNRyTqCV9Hlvlnzz/mTNjEabmCvWSRfKFS7QxcYkU4vTRaNXJ1ZlzRKghPUeafUimQMMAZ9oqGxPU1VI1or60hKFjQs40XjApE+F18lo9DwHqz/NGhvNrMjsDmMmuMwMFN+WWxjUQ3/BMzfjACJyoMR+bnVpUMMDqByhAAV66qYIzxcvTTOXruVJDjq0k6QbVi3NPZHreC/iygTmsxxR2PWaVXZabEV9QmH0xlJeBSHfhJ6bEmLu7x59rheHzfTwPteUwteDTDLHo6IBIpqiV+doF/fU4S8MPCPjTjJEuImDw5otOe2+hv+OG/3t7MxoBvMnB3IvSUV90/9+H6rRBahcZcbFrVbbZumskcfC2YPPdVhtZA3dJIJOKX+VjUlEtBdT6TcqdSeJ8mKMECAJBjeb3YF1pjXYK6wTg8tsYJk45eNVQGwP3myOuDD8M4UTgdspzyuICu+jKR9PazCCMoRMQMOVv3Sx4ZojYwpe2XzNVSxcgWdbnJrArLTylinZql9UGcRNuZdrWe4G/VXegd8yj0cwCIEpNZXzHaAJ7Zivkc7c8dMwXBkiZlB22rRrUjOLMRkA/CqbodDF14ZjrWaijEj5cbA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(39860400002)(346002)(396003)(366004)(451199015)(82960400001)(26005)(52536014)(6916009)(7696005)(55016003)(6506007)(5660300002)(66556008)(38100700002)(66476007)(66446008)(9686003)(64756008)(8676002)(4326008)(186003)(122000001)(41300700001)(66946007)(76116006)(38070700005)(8936002)(316002)(71200400001)(53546011)(86362001)(54906003)(55236004)(478600001)(33656002)(83380400001)(15650500001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eu5+IykmzjsAk9981bOGVv8vQOVIHAXZRkpZIievXegDCJGhobGG62lrTj64?=
 =?us-ascii?Q?9qlcXj6UO0B6J+HTOKXlRofQ0WMzsC9pqFTvmevPoli+GUI1pUTE5AP+FY/M?=
 =?us-ascii?Q?RZs9c9dOFDlxroQ44EytVSamATk+jfwTH4EBmfMzYclUd174Ojxno9V6ZPMY?=
 =?us-ascii?Q?q1T9kkfW/+LPZV+83B04Dh/IFAS0uaOeusZgXwMKQWn32RKZaR+N6U6SS1GN?=
 =?us-ascii?Q?jyD1kLzFm8NIYeEfAELnztGtfUUDR+i7/iKR8sdmlO9+QBIbADI/Wo0zJsRz?=
 =?us-ascii?Q?Ux+EcK4Lu8/eIIhwTLZBqDodyEnIxrZ5+vMHTNE9mgu8SJo4rXX3UZlK/2kT?=
 =?us-ascii?Q?vN2T3o2w7sL8Q22XWr9cBgMpWvI7BGbDI7bYlIA9j+l68i6DinK7Mg8sdmbL?=
 =?us-ascii?Q?iU3E6hG81GGWlyXVXZuzzgZbQXYekDA7l9lOKTZU5N19qM2bWvxm5jxFrKOc?=
 =?us-ascii?Q?YKQIfWsYdT2PsSjmx6eI5Do/9vYuas8rJu05LXOlR/qv46fNQ2pZbe/ekPyj?=
 =?us-ascii?Q?2dV1gXKXNaW5COjKydPDt1iAb5a0KtXce630GP17QOM6tbsmxy36UbSH42yq?=
 =?us-ascii?Q?KvvJk7os27YHVq6NewpzJX9IlPMMZqbgT3a4MZctU/Cc78SX9fmkv6PaGF2I?=
 =?us-ascii?Q?KZTN8MJqw4M7lxt7wKCCaB5sAT19jhObDU3gurL6u0aPwTZ9YoR3RnLYSuIl?=
 =?us-ascii?Q?JKHPaXxs8oJaOvIeKiWe8rRNyOa3DlyfP+lGNH4CtZdS1pLSyt2azZj4tE/G?=
 =?us-ascii?Q?keriMC8t6JMLxHH34QN8eeu/xYAdkdDvn6CaZLJPFOu4P+AX/pfdEwWikNpk?=
 =?us-ascii?Q?0EPwEeJGx6tdgW3vfvZD7rN+3v55PvKSz9/74LTIfymWBCokESjLaMbEkJbR?=
 =?us-ascii?Q?F40Hak3ejst4DCSCByW2rHyBYe8A6u1xp6OBQZ2H02R2uJZciCHqi4qtBYVc?=
 =?us-ascii?Q?rS9u+yboJZA8u1SdGCP1AOP9AXBrA+1ygp31bOJk6pOx0jx7Or6BGDKt5oNa?=
 =?us-ascii?Q?eYxYQ9W3SalIz4JjddiDyeM6iFSJSM6ummP9T7SWWZAL9YarujKLAdKS/yis?=
 =?us-ascii?Q?2wOMS1llPO+m0OCLlVwCLcW8buiGgpAmVUxis5yB3rIPf2TsvuYPHFgljSHR?=
 =?us-ascii?Q?GQEC8HDTZwLGXAxAWMdK2FgmyjNYGYGWyyK/SJD3qYGfXXPhfL5qMEpCyWIW?=
 =?us-ascii?Q?f7GLBjGuQQ5+MKtzYPamblnj6RASjRgQdaiksxFSdR9Owca5O0Ov1ZrRdJ73?=
 =?us-ascii?Q?mtA4vF5v6cmrtZmu+rG0Pytia2JMyIb8TdGblc2kBOcQ9ajieQAZyVpzUTiY?=
 =?us-ascii?Q?sSjkIJE/9H7FQz/zIOcvvaVSI3TBltyBg3rXbm3oqnopFC5T62Z0WN288Yro?=
 =?us-ascii?Q?cI3Jtg/V8UOF1awhGkFTNO9nFOe9z4m4inc96ot2cnRtS0SyIktbSYCqb/+V?=
 =?us-ascii?Q?Tvt1wkNc29/aeVZ3A6d1Cu2iERIwQ+4f+4drUKtXYids8A/WjeHntXt0GyQp?=
 =?us-ascii?Q?9H/AuxOK7dtFFJyq0Zl7lsyQJz2otzbf/A1ap2jZ72/D2Ufyh2CT4NKaSgVQ?=
 =?us-ascii?Q?N2ObG2lug22wyMJFh3UtX54uZUZAkBnr90v7PAuS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61b5b327-7044-4e60-f6b7-08da959062fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2022 14:00:59.4321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qjft6Mwd0xYvhb4fkb7D4TpLlREYROk6dCKDKIpR3ZE8Z0GkQikwJYpsvjXNXKEQ2ivs6WeWtA/gIl4m5J38Olc2bS3olAc830nsqsBE5oI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6935
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/dgfx: Release mmap on rpm
 suspend
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Auld, Matthew" <matthew.auld@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Tuesday, September 13, 2022 7:00 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; chris@chris-wilson.co.uk; Auld, Matt=
hew
> <matthew.auld@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/dgfx: Release mmap on rp=
m
> suspend
>=20
> Hi Anshuman,
>=20
> [...]
>=20
> >  	struct ttm_buffer_object *bo =3D area->vm_private_data;
> >  	struct drm_device *dev =3D bo->base.dev;
> >  	struct drm_i915_gem_object *obj;
> > +	intel_wakeref_t wakeref =3D 0;
> >  	vm_fault_t ret;
> >  	int idx;
> >
> > @@ -990,18 +1000,24 @@ static vm_fault_t vm_fault_ttm(struct vm_fault
> > *vmf)
> >
> >  	/* Sanity check that we allow writing into this object */
> >  	if (unlikely(i915_gem_object_is_readonly(obj) &&
> > -		     area->vm_flags & VM_WRITE))
> > -		return VM_FAULT_SIGBUS;
> > +		     area->vm_flags & VM_WRITE)) {
> > +		ret =3D VM_FAULT_SIGBUS;
> > +		goto out_rpm;
>=20
> we don't need for this change, wakeref is 0 here.
>=20
> > +	}
> >
> >  	ret =3D ttm_bo_vm_reserve(bo, vmf);
> >  	if (ret)
> > -		return ret;
> > +		goto out_rpm;
>=20
> Same here.
>=20
> >  	if (obj->mm.madv !=3D I915_MADV_WILLNEED) {
> >  		dma_resv_unlock(bo->base.resv);
> > -		return VM_FAULT_SIGBUS;
> > +		ret =3D VM_FAULT_SIGBUS;
> > +		goto out_rpm;
>=20
> Same here.
>=20
> >  	}
> >
> > +	if (i915_ttm_cpu_maps_iomem(bo->resource))
> > +		wakeref =3D
> > +intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
> > +
> >  	if (!i915_ttm_resource_mappable(bo->resource)) {
> >  		int err =3D -ENODEV;
> >  		int i;
>=20
> [...]
>=20
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index 8262bfb2a2d9..897148880acc 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1634,7 +1634,6 @@ static int intel_runtime_suspend(struct device
> *kdev)
> >  		return -ENODEV;
> >
> >  	drm_dbg(&dev_priv->drm, "Suspending device\n");
> > -
>=20
> Please remove this change.
>=20
> >  	disable_rpm_wakeref_asserts(rpm);
> >
> >  	/*
> > diff --git a/drivers/gpu/drm/i915/i915_gem.c
> > b/drivers/gpu/drm/i915/i915_gem.c index 3463dd795950..c3a83b234b6e
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_gem.c
> > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > @@ -842,6 +842,11 @@ void i915_gem_runtime_suspend(struct
> drm_i915_private *i915)
> >  				 &to_gt(i915)->ggtt->userfault_list,
> userfault_link)
> >  		__i915_gem_object_release_mmap_gtt(obj);
> >
> > +	list_for_each_entry_safe(obj, on,
> > +				 &to_gt(i915)->lmem_userfault_list,
> userfault_link) {
> > +		i915_gem_runtime_pm_object_release_mmap_offset(obj);
> > +	}
>=20
> Don't need for brackets here.
>=20
> I see that all Matt's suggestions have been addressed. From v3 this lates=
t release
> was the biggest concern. From my side looks all correct.
>=20
> would be nice if you add the cleanups above, besides that:
>=20
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>=20
> Thanks and thanks Matt for the reviews.
Thanks matt and andi for review.
I will do the cleanup and send a new rev.

Thanks,
Anshuman Gupta
=20
>=20
> Andi
>=20
> > +
> >  	/*
> >  	 * The fence will be lost when the device powers down. If any were
> >  	 * in use by hardware (i.e. they are pinned), we should not be
> > powering
> > --
> > 2.26.2
