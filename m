Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A952B7CAD16
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 17:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D0110E21D;
	Mon, 16 Oct 2023 15:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B9A10E21D
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 15:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697469257; x=1729005257;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9xY4NZRJfaRjUzsLiNEGwKGWCSjTs3wjLayyyZ6pNmo=;
 b=QcHdE+F9BDCiyPBBh0AYgpS2uPhPzYINXHrSj7seVrxz0ssras/9DRga
 SN0hf5ElPApxitZSp29q5lKhiC5UYzoy4oHYZ9Mr4y9wt9C50lQdHzwIu
 PyC+yX5MTXZ7l5hjVMUeaqJQfqCqb938ln+c2FBrSK0FoCYWpk44lXG+c
 EhMuC6dv2eP+UpzkeuzwVNNg5jdW4yVa0XMFudqNx0uPA+arRG4bljPsD
 DGJWIr+b4LjErBxBm5tIMJQoHqOSvG4DNYdpM3D2jX7xM1/OhAiNQia3C
 /wDu7bWTlh1pxEVrUfYiaE8Z5CkcEhEZorGOb7lCvvcpFjSDf8MOrmMVk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="365809889"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="365809889"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:14:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="785113137"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="785113137"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 08:14:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 08:14:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 08:14:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 08:14:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 08:14:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3LqqrpQXXH0SOUX124S7UOKAL2lzDL9TNpue7n+Gg/mQrH56gpHBYr5Issl8Qsls8ET+yXCSg82WjnWbqjGimsR3Jht6qMSdY18oH/Xul3RYVt59a27zFW6phac79yueChFwcHnaUB6vu6D7oMfUNe6x6qgVjc0BzRKheenDCJnWjljbbwoY4MVIld4rK6RIR5SY1Xkx0kvryClnIzMketPzGnYZkdQtldOPfG9RSpJkUJSYqwkmriEDkdx5lkklKipQW1JUhaWnxne3aV6l7gZ9Xz4zaJzCVW8t/Lv0myFozfLNDvuSZ21HVgKWtli1WNESzDRlFEjeFHekYueSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z3U1N/F5AiCc4XcwUhV5iwKEk1HF2RE9H/B2XBBzrmY=;
 b=h2mVKGj33p8E5fVg3d8ZP3LEus82rtH6yMyngiHUEkG7WY4ZQ4Gpoo4UIPBJmjVddEcvWiCDjG5B++Ge3wsJRtuPKTe0+mDq0xlAOJqM1JzaBQvzZXv9EMtj2jKoH1wDHBb4J8q9qa8EciatcQcmd8/Q/QekVKg0DTubxsupYWl3dLE1EnNwuNzs1X3o/Tj2FXI4F4PNcF4NQvKpuUr45BkDzCb7SbpMi0ycPKZPGmBagXueqSp6rIKMcTzNw0731hwEXBfjfEpdFtfcm2GHqFRQ7xz1iApe3vDzXPrCFHacPc/22WSF2drZc7NKgQ5Hf8WK2FOq5TvJaGo9tedssQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM6PR11MB4596.namprd11.prod.outlook.com (2603:10b6:5:2a6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 15:14:07 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::1f11:8a4b:655b:589d]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::1f11:8a4b:655b:589d%6]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 15:14:07 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v16 0/7] drm/i915: Define and use GuC and CTB TLB
 invalidation routines
Thread-Index: AQHaAEHCtvE3Ldc3hUeiPr26Mi/kJ7BMhXPw
Date: Mon, 16 Oct 2023 15:14:07 +0000
Message-ID: <CH0PR11MB54444FC1AAD74990B8547D42E5D7A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM6PR11MB4596:EE_
x-ms-office365-filtering-correlation-id: b60af617-e8c6-4af6-353f-08dbce5a8af5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EDUY03AQ1ys3jVcS0UXalWOgJSDEJMDetP/FJmevYPDlxGMiwjz5Spr4gh3h/BqwgXHh4y/uHy6+Ca3y+eYHqHWg/gJTdwi++TGLOhab4P0TO3EEn3EBFCywNyASZ4gMLzhKbS6Z3gdCewYHbMDfi0pHKia7huMxnpwoXX2DScBMwWtIKEpyC4so/0ll9u9U95LFnm3cPKHqBlCSRl5mebn0VF6IJuN7seqHP0vjIju1JaIEUuNsI9T5ntG73K/K/BBd/eaPbUu7mahn/szlZr2firPkIfXS3ioGIX6OT51QEvHjGD9KAAe65h2knN4UusRyI/lxEH7RB8XVIauMyoW6LmR+zFRciK/Q264OJsK9OtdnTXRUy9wIYEuFJBeoc4jm5m9UjPGU+AZfyKTSfqKvDKNuedS355FnlMtfLjXX+BjU/duOB5EkeQpGjl+NbGPuE/7JTFJ62wpLLS4fFV6r/OYgCUepEJ6XARy2jlGbmV18X7Jwwz2mMLZxzrDsGUS6ppyihrIhYFtfOuM6I4Nplil1AbakDPe9zN9vJTTwnQQq6sCC81BS6syWjo7ri5JRrvxz29OuybCPA0FMcJEOmVPBqQ8cnTxQKJUTyCQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(136003)(396003)(366004)(376002)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(2906002)(41300700001)(966005)(86362001)(478600001)(64756008)(54906003)(66446008)(66556008)(66476007)(53546011)(66946007)(9686003)(6916009)(76116006)(7696005)(6506007)(316002)(38070700005)(8936002)(8676002)(52536014)(82960400001)(55016003)(26005)(83380400001)(122000001)(4326008)(71200400001)(33656002)(5660300002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fZmeUhxLBBfS0EEo64j6S9p9yLRjwzRzXJF4CnTbYIP9SEpVbZt0okm3L+O4?=
 =?us-ascii?Q?tkwWxUdaz0KxBbANqbEVnKgA2o3ZQu3lBlS3ULXbmcNjhEwWA5yorMR0dKbs?=
 =?us-ascii?Q?wKILtVhpcNgmG5f45+Y8TebtHlLmJaoHoVMqBMcZaPGQirrY4A7ag+CgrJK1?=
 =?us-ascii?Q?E5ZYiwOXX+6tMxfTwvh+9ntLLNAhnOvO224VtvE68v/ukWfkXfg3vbKp1IIZ?=
 =?us-ascii?Q?RIrJNDM6WBhc6B1GV9+OLh6RSWLlsEBiZOAx6X0RUwvAdxMzzpqgMIO/XKTU?=
 =?us-ascii?Q?P98yAANU8nB5Pg3MPGpUkd57OA1eMeMM0wWLzWRx0B9fMt4//HVcR10jiKvO?=
 =?us-ascii?Q?rpRuX8hMPwvZzPP9iHbz2wLDyU1Cuf2fYzCxAiCpwmvKQcHgducD5scl0ab0?=
 =?us-ascii?Q?oCzXU0OiD8K34taNUP3GscZfRANXL9OwLxBmUEVPLfbQycuZDACw96wSju9G?=
 =?us-ascii?Q?63LtcVpjONVPxpoHqLKwdzsOGNHXQF7tCoHoe33krgdC7TTk1AAiPdcUea5e?=
 =?us-ascii?Q?G0gk64InQAHOolM4pFnpjJQDmqf8HmfYA5va8cV7Zo8jcJxVzALVr6kwvYLw?=
 =?us-ascii?Q?y1F1OhfDhQ0fb0rHGWhuG9owY5Mx0UwZaIJoEmCHjk2L+hFElyggtY2T2R7E?=
 =?us-ascii?Q?MDO4Cd8ztlZprDzJggTWQ8ZYh5KD/tozs+7VP5YzPuP6bgXPzBAl6n0tyauv?=
 =?us-ascii?Q?tt5UCsbrDobJYgwTUJRKO24F/C5PAYbGVS+3emetd9zpn4u8V0mjzVDjqf0H?=
 =?us-ascii?Q?2TYiJjBJo9PQ/S+ama1UfN08byqdHYhXJmXUXqaW9b6B8JyNOvJ8p9IC6rhK?=
 =?us-ascii?Q?DUim88hENfGUIEvbKoW08lm8KO8+DStTtVgZ+vtdrIbFvvzLP085u+e49lv1?=
 =?us-ascii?Q?cBYkrVeHSRwtrclQVGZUaxdtbVFVgH6/oVQKKRIpU9MMOwnO5IA7YO+80d8D?=
 =?us-ascii?Q?rSMnvrCBdIVPnw7Dqt05roXHCISsvgL9X3WmVCCdQOzzWyccEkvXjksBS9g0?=
 =?us-ascii?Q?xgEzfCi0A6q9XNGnwnl6x8WE3rkj6wGVUfGYH3xqw9d3Vkur6+HTzqJjk32x?=
 =?us-ascii?Q?i62oPEiLyxNk7S/zONAXz5HqnMPjuDntOPIrGO51biQxzlTWFhRYF0YJ+Uhx?=
 =?us-ascii?Q?1SceRBl86WII9lmbkJxB4rUpP2W0epDzo79Pk5xB49J2hcml00/nY8QoIHa2?=
 =?us-ascii?Q?+7wEFS1PlNb3d3as9Ili9vbHOmXZjVyCUSk64D3scYGShVa8rMRJdDsXlQ/t?=
 =?us-ascii?Q?vhTKkybtzJMj4MGQGnGL7Rb406G/xOacCdBV/cR5W49EsQcRTnGDlkslkG0d?=
 =?us-ascii?Q?ssejxSXu6OsS2o1UuMbkso2jsQtT0WBTczCLxkss9AZCDuU8L3t3X43j7PSP?=
 =?us-ascii?Q?Inpl+ThbEZhq6Pfkj7BfeN5xm1wObLKbpllkIyk4MohTGkStgRdIOM+jxdVM?=
 =?us-ascii?Q?hnUQjUp3B1hAUTVffLECjK1GSss0ZnJUUYzeqQQwSVEPBwLJ1EtEw87mS/1V?=
 =?us-ascii?Q?Tg4aeEYmEAGwC8upE4Xj07pQCUwSqRJhevp85iNyCmqdUIdoQIU62IQUx3d1?=
 =?us-ascii?Q?rAVXgVbYfyx+p04GK4JcGc07Nu7aDuOp+22mVXnQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b60af617-e8c6-4af6-353f-08dbce5a8af5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2023 15:14:07.6557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m6LLDUUKice+hIl/MkpOU6naL0jF18VfT8nxV632RrH7++P5IvzvxVYDaHzQI0/b+Rj45pyvuxJf6ptdH9OQGRjagOnvDaoelA8sA8YecIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4596
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v16 0/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Cavitt, Jonathan <jonathan.cavitt@intel.com>=20
Sent: Monday, October 16, 2023 7:51 AM
To: intel-gfx@lists.freedesktop.org
Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Cavitt, Jonathan <jonathan.=
cavitt@intel.com>; chris.p.wilson@linux.intel.com; Iddamsetty, Aravind <ara=
vind.iddamsetty@intel.com>; Yang, Fei <fei.yang@intel.com>; Shyti, Andi <an=
di.shyti@intel.com>; Harrison, John C <john.c.harrison@intel.com>; Das, Nir=
moy <nirmoy.das@intel.com>; Krzysztofik, Janusz <janusz.krzysztofik@intel.c=
om>; Roper, Matthew D <matthew.d.roper@intel.com>; tvrtko.ursulin@linux.int=
el.com; jani.nikula@linux.intel.com
Subject: [PATCH v16 0/7] drm/i915: Define and use GuC and CTB TLB invalidat=
ion routines
>=20
> Implement GuC-based TLB invalidations and use them on MTL.
>=20
> Some complexity in the implementation was introduced early on
> and will be required for range-based TLB invalidations.
> RFC: https://patchwork.freedesktop.org/series/124922/
>=20
> v2:
> - Add missing supporting patches.
>=20
> v3:
> - Split suspend/resume changes and multi-gt support into separate
>   patches.
> - Only perform GuC TLB invalidation functions when supported.
> - Move intel_guc_is_enabled check function to usage location.
> - Address comments.
>=20
> v4:
> - Change conditions for GuC-based tlb invalidation support
>   to a pci tag that's only active for MTL.
> - Address some FIXMEs and formatting issues.
> - Move suspend/resume changes to helper functions in intel_gt.h
> - Improve comment for ct_handle_event change.
> - Use cleaner if-else conditions.
> - Address comments.
>=20
> v5:
> - Reintroduce missing change to selftest msleep duration
> - Move suspend/resume loops from intel_gt.h to intel_tlb.c,
>   making them no longer static inlines.
> - Remove superfluous blocking and error checks.
> - Move ct_handle_event exception to general case in
>   ct_process_request.
> - Explain usage of xa_alloc_cyclic_irq.
> - Modify explanation of purpose of
>   OUTSTANDING_GUC_TIMEOUT_PERIOD macro.
> - Explain purpose of performing tlb invalidation twice in
>   intel_gt_tlb_resume_all.
>=20
> v6:
> - Add this cover letter.
> - Fix explanation of purpose of
>   OUTSTANDING_GUC_TIMEOUT_PERIOD macro again.
> - s/pci tags/pci flags
> - Enable GuC TLB Invalidations separately from adding the
>   flags to do so.
>=20
> v7:
> - Eliminate pci terminology from patches.
> - Order new device info flag correctly.
> - Run gen8_ggtt_invalidate in more cases, specifically when
>   GuC-based TLB invalidation is not supported.
> - Use intel_uncore_write_fw instead of intel_uncore_write
>   during guc_ggtt_invalidate.
> - Remove duplicate request message clear in ct_process_request.
> - Remove faulty tag from series.
>=20
> v8:
> - Simplify cover letter contents.
> - Fix miscellaneous formatting and typos.
> - Reorder device info flags and defines.
> - Reword commit message.
> - Rename TLB invalidation enums and functions.
> - Add comments explaining confusing points.
> - Add helper function getting expected delay of CT buffer.
> - Simplify intel_guc_tlb_invalidation_done by passing computed
>   values.
> - Remove helper functions for tlb suspend and resume.
> - Move tlb suspend and resume paths to uc.
> - Split suspend/resume and wedged into two patches.
> - Clarify purpose of sleep change in tlb selftest.
>=20
> v9:
> - Explain complexity of GuC TLB invalidations as required for
>   range-based TLB invalidations, which will be platformed later.
> - Fix CHECKPATCH issues.
> - Explain intel_guc_is_ready tlb invalidation skip in
>   intel_gt_invalidate_tlb_full.
> - Reword comment for unlocked xa_for_each loop in
>   intel_guc_submission_reset.
> - Report all errors in init_tlb_lookup.
> - Remove debug message from fini_tlb_lookup.
> - Use standardized interface for
>   intel_guc_tlb_invalidation_done
> - Remove spurious changes.
> - Move wake_up_all_tlb_invalidate on wedge to correct patch.
>=20
> v10:
> - Add lock to tlb_lookup on guc submission reset.
> - Add comment about why timeout increased from 10 ms to 20 ms
>   by default in gt_tlb selftest.
> - Remove spurious changes.
>=20
> v11:
> - Update CT size delay helper to be clearer.
> - Reorder some function declarations.
> - Clarify some comments.
> - Produce error message if attempting to free a busy wait
>   during fini_tlb_lookup.
> - Revert default sleep back to 10 ms.
> - Link to RFC.
>=20
> v12:
> - Add helper for checking if GuC TLB invalidation is
>   supported and guc is ready.
> - Prevent suspend/resume actions involving GuC TLB
>   invalidations if guc is not ready.
> - Add path for INTEL_GUC_ACTION_TLB_INVALIDATION_DONE
>   to immediately process in ct_process_request after
>   it is submitted to ct_handle_event.
>=20
> v13:
> - Re-add error check in intel_guc_tlb_invalidation_done
>   for invalid length.
> - Remove intel_guc_is_ready requirement from
>   wake_up_all_tlb_invalidate.
> - Align patches 3 and 4 by adding a check for GuC
>   TLB invalidation support to the former that was
>   added in the latter.
>=20
> v14:
> - Re-add intel_guc_is_ready requirement to
>   wake_up_all_tlb_invalidate.
> - Move wake_up_all_tlb_invalidate from
>   intel_guc_submission_reset to the end of
>   __uc_hw_init.
> - Remove gen8_ggtt_invalidate changes, as they
>   aren't related to GuC TLB invalidation.
> - Add missing newline.
>=20
> v15:
> - Move wake_up_all_tlb_invalidate from __uc_hw_init
>   to intel_guc_submission_reset_finish.
> - Change structure of wake_up_all_tlb_invalidate back to
>   the way it was in v12, since it looks better and is
>   functionally equivalent.
> - s/readd/re-add
>=20
> v16:
> - Swap must_wait_woken and intel_gt_is_enabled checks
>   in guc_send_invalidate_tlb.


This change was added on request to exercise the following hypothesis
about some observed regressions:
GT can go into wedge state while we wait for the tlb invalidation ack and
gets timed out, but at that stage we don't care about the results.
-Jonathan Cavitt


>=20
> Jonathan Cavitt (6):
>   drm/i915: Add GuC TLB Invalidation device info flags
>   drm/i915/guc: Add CT size delay helper
>   drm/i915: No TLB invalidation on suspended GT
>   drm/i915: No TLB invalidation on wedged GT
>   drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
>   drm/i915: Enable GuC TLB invalidations for MTL
>=20
> Prathap Kumar Valsan (1):
>   drm/i915: Define and use GuC and CTB TLB invalidation routines
>=20
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |  30 ++-
>  drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>  drivers/gpu/drm/i915/gt/selftest_tlb.c        |  11 +-
>  .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  23 ++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  38 +++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   2 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 219 +++++++++++++++++-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   7 +
>  drivers/gpu/drm/i915/i915_drv.h               |   2 +
>  drivers/gpu/drm/i915/i915_pci.c               |   1 +
>  drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>  13 files changed, 371 insertions(+), 13 deletions(-)
>=20
> --=20
> 2.25.1
>=20
>=20
