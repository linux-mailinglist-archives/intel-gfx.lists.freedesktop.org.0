Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 696F3853963
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 19:04:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5C3F10E61C;
	Tue, 13 Feb 2024 18:04:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lf4sZSyw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B48610E64B
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 18:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707847448; x=1739383448;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HAtQO9MMy/5B89RxNM7ZthnFsN8D0hIuqKAksK/2xQY=;
 b=lf4sZSywsihXKTZ4emtBTe35JIr+6v4JOmSjLTqlh/LpZaMDhHm+LhEw
 3ehU8nDE3dkXHmJAM40wT+RefXWC8TL5daB7W5DXO5E6utxXKRp78pa2N
 0PG51Leu4HKpjJ2lGnnXUPweUChmSkOIUH6nQVdACmLaXoEa8qS0Ofvv9
 8mxcquVvAPprRH53jPWNb1omHngKVH2tLzdNz1yH0pP8Y8bAGCUVD2Coc
 XPg6FwwN7k32Mn5Po8gaU8I/PpD0tr/SZiLz0ByYqYTycZ+FcnT6/hdkM
 kIrOF53VRCrcpqod/OF0KrniSNVupE48feeBbVcuM1pW0F1BjWglq8nJC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="2010098"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="2010098"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:04:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="2929324"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 10:04:09 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 10:04:07 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 10:04:07 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 10:04:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZU3NkKCEh3c6DJqJg5y4Hco42RJF0njSFre7dhx84K3OvQCpDMLpT9Km+E/oPFdpUise83YEhXSCQ1MkupVcmZ1DC9nNNjnaBcSPIUicv/aD6CjkiBGJjo8kefhQwecpgdb1clXjyVvVLd8+RfCSvNubgSwCnTADyhZtj9rhzWEGVNjZGkFLNIvLVGZ3nr/patvhtrruJ954yAG70G2HCnSoDyPaenTuXo/BOyIUd95OWt05EFObA21sopF7mbTnNyDsmup1VtoKvnMoGip02HnoRUO1vWPkmhjNGSIYdsTVQOewlelh2Odm72WJzCRqne807xJTcSEjzCu70wfd/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3fyK33wByfWvvWKPnZbDyXFiHnbbmA4Y3ZE9mIoeUec=;
 b=lqaZjtu8lF4yhWOMOVsQEcKPRzzLGwxNZYolfcAu2FHBAEahmobCZEt3Fxzlnm6+/Z9AW33dQ7g4u6FlBJBvCM4z/S5Qla2x0mZEyvCfDbn4aprfA9fsoZZahlfgoOF+76baitN2RdA30gQpSOzDqDumWhABH+xz9gHKejjMSaY++0GdolUn9WAawYAvn0HymO+Amf0i9kGaygLbPbkH7rCZ5WfI7xKLdEHTYPUMF6LbBInFPAJro9yvxzrSFUUCTCHc+4N8mju2E11WKJicqZgzUXELWbUjevDfxrgI28WL2CRU1w2ODOU+DfVPSjZjiaO+dIf4tkblI6GGu5xAhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by SJ2PR11MB8450.namprd11.prod.outlook.com (2603:10b6:a03:578::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 18:04:05 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::152d:16f5:ab9a:7c6e]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::152d:16f5:ab9a:7c6e%7]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 18:04:05 +0000
Date: Tue, 13 Feb 2024 10:04:03 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [PATCH 0/2] Fix crash due to open pmu events during unbind
Message-ID: <ZcuvEzE0ItDKw7lN@unerlige-ril>
References: <20240213064650.45051-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240213064650.45051-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: SJ0P220CA0029.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::13) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|SJ2PR11MB8450:EE_
X-MS-Office365-Filtering-Correlation-Id: f8e7fb41-6e9c-4b71-93e0-08dc2cbe2aa0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A62Rd0uqoSPPA/Ohg+LnTvXVnqE0Ent82wu/jhT/q6h0fnBSfqc7mpyWa+th4YsUBD+DqxWtmByO1S4J9NwHmHKNFFlOySULYkH0+a31uvcx0crXLumIYSj1pHdi1ylnPZIqKHK5dm1X7p3eBCbKRnYzo7fI6eNPCta/FOMbP5iNZm6WB19z1hSfFox6sXyU7wtucEOmNtRWwdFoRvqUSnFZwYVLLPUZ0Dv4qVW/d/Mlh7kvxbLRFLZ+3ak2nEUImKbH4uNsxAm+Ucsjtl+97CTfSp1s/PXb+m0o8Qdk2C8HKqdRdZHwL0Npz02WJtCCSCI4Q9A5mTDqmyYMc0P4IQa/JspLsc+yBFWk18w8O1eTdo9w9UTw6tlGO+4hLWKsbasJM3bsWKY5/U+Y0VIXqOP82gen7L3rIeifEAjuE0m3a1zWR6cyGc71dxCd/0UlYdbphkPe+zlFFkMJ4OWzHjRgufcLBJpuwqh/OWdJ3RaRY1bnWSBYyEtRMzOsvpzwC2Gr5VyvivOLwrJ3tK96EwhHq/kmjgr4y+5kwlDWkSjT3e/bpFq3VrfJySrkd06v
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(136003)(346002)(396003)(39860400002)(366004)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(66946007)(6486002)(41300700001)(2906002)(5660300002)(316002)(66476007)(66556008)(83380400001)(33716001)(8936002)(4326008)(8676002)(86362001)(6916009)(26005)(6506007)(6512007)(9686003)(38100700002)(478600001)(82960400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVpJelBkaXJnSjkyOTJFdCtMbFcySFZIYXBPY1R0dVpCcXBoMTI4RkVMSTZ0?=
 =?utf-8?B?cnVwL0JwL3AvUXVlUkFPZDh3SE01VGNjK0hsNmtER2F5RVBnN0RyTk1BbzBz?=
 =?utf-8?B?VllLaVMrZnJPc2JwWDZweXJUdlBoZDNGOW9talo4ZkdvV0RJaldsOTQ1UzZm?=
 =?utf-8?B?M1gwZS8rUGs0YlRQUGdhRC9XUDkrSW5ZWVdTWXhQVHBmNWx2eWkyck9TSkFB?=
 =?utf-8?B?TjNxZDMvcTUrZW1KZWt3VklDVzRxRnNxMCtOcDJjMklsMUsya29GOGRPT3E4?=
 =?utf-8?B?dWhqdzdpc09mYnhVOThhL09iOHpybFhCRWxHelZ4aUhaU2pEMk5LSGk0RFAv?=
 =?utf-8?B?Vm0remRFMFpMNUt5VEc0b1BQQVRTZ3U4cDNxcXZkbWxkdzVTaFJZRVdLbk5R?=
 =?utf-8?B?OTNwSy9qMEt3bWFBV0Rzd291cFUzU2FPaDRaZGxBOGRXdURnRjhpQlo2eGdI?=
 =?utf-8?B?QjdnTHFKL3Q4bWVCRWlHUG1BSUxoZFRGN2IySlFRYUxWZXpzNU9xYTVxd09D?=
 =?utf-8?B?K040clpVdi9Rdi82ZFczdzdTUUxlVTF3RkQvYlhKRWNmSVR2VFA4aUJhdUdj?=
 =?utf-8?B?Y0VXMzZaVzUwVmI5ZDFoSmdQNU5qdUxnNUVZSnJTaElqblg0aHNvNDVhZ3Ju?=
 =?utf-8?B?UFNrdXRWcVBPTnJWOVpFdGd4bDJwMWdiSGlEbmdEaFhvZWVsOXlzdDdrRGRv?=
 =?utf-8?B?SkkxM3RTY0ZMQmNHT0JpUEc3NHQ5UlU5S1NwanZtaTZkTjNmamRtTThvTS81?=
 =?utf-8?B?bUQ2dlcxYm9uQVpneWV3NDhqVXFQRGlDV2Z1WXBNMzI3ejcrR2dVdHhyck90?=
 =?utf-8?B?YlZzZDBqWnNsVEtYRHozRHpiM0JwdDdtYklxSVBmMUVYUmtib253QUs0RTBN?=
 =?utf-8?B?QjUyZ1FOMm1Wbm1CdVY4a1pPelFHRktKamhuWGpwNkN2WEo2YXk1c1hhTysw?=
 =?utf-8?B?RERremhOVk9KaDlzajBZbS9iblVrTVl6cm5vNjZqYlFkbW5CUEczc2MzS3hj?=
 =?utf-8?B?N1J2OTc1ODZLTGQrZUhsRDlNUFhPZlQ4WnJvT2VXbVBzenF0WDdhK0s3ZnJy?=
 =?utf-8?B?TUt2VnZ1R0Q4WWU5c1B0dHVmeHYrc1dQR3lYVXRlN2h2QWYyREIrWWhkK2Jk?=
 =?utf-8?B?VElkdHF4SUFrbFNIVzdtMmJ4Ymp1SnQrM2xSaktpNlBCeGRxS1ZlRXFQcHg4?=
 =?utf-8?B?L1Z3ODN4Nzk1VGJsV2crYXRlRUlLdmRQYkYyZjBSMFREUTA3VFE4N0lRK3pF?=
 =?utf-8?B?K2RCcWRmNG4vOWhVaHBqSTRhdktuN0tSM1NmalRidDJHRXArZUN5azNnY2R2?=
 =?utf-8?B?ZGJuVk1mTmg0Zm5DdmhuakUxWmJYTmRGY0YyY3JkK3dmVkFUNW5hS0FaUXF5?=
 =?utf-8?B?VGFINUorek9hOGwwLzU3T1JpVU9Va1crTk03M0xMdEpRYk9FRWZzb2RlMlVu?=
 =?utf-8?B?ZW5ZTFRvanl6VUQreE9YdUovbVRzWTU0RzNZQkZJdnBwWVJwYmZBTlhmclpV?=
 =?utf-8?B?dUlWdGtTSVBQOTZIYjZNaW9iSUNaUG1vMFNDMDFmS1ZTM3JUMGN3bWlBOGxa?=
 =?utf-8?B?MjJ1cG9sc3ZxYm8zTUpSekxXd1dTQ2Y1RzFYbC8vM2dlOW1IMi9ncE1tWjBq?=
 =?utf-8?B?R1JpRDJjaEQ2WEdwUzh6NWJZRWovQXNXWFhmQ1pWK052RFVsQ2NCK1p3L2Zq?=
 =?utf-8?B?OEdtQWJrNXN5WU93dDVVeGxybzJYTzJVc3NweWRwN1ZUSXZsYldOUTlvZkk3?=
 =?utf-8?B?cVlPalVuV29LbGc4Ykd2NUNxcUIwU0dKUTMxOXFjRzVnQTlFTmQ1K21heDE3?=
 =?utf-8?B?Y0lJQW9XclNDMkc3bjdjSmRsMVltQUhwQXFIODE4cC9xTUJwVlBFQm5NYm5N?=
 =?utf-8?B?UFpUY0JXbnloeTJ4eVhSVkdHMEVnb1lGd21Lb0hiNHV3b25IVFkrRUZZQlp3?=
 =?utf-8?B?Z3JVdHNla3JlUW5tSS9tS0wzQ2RxcGt4UVd6YnhJaEk4RHMvMjU0OUFSSmNI?=
 =?utf-8?B?TmZPd1Nxd2V0b1NMc1BZaU9jd0F3YUpRYUJlZFRZNjQ5RXpwdDgzOVhKdi9p?=
 =?utf-8?B?ZDNUZmx4ZDh5b28rSkpUZTJueEJhY0pPWCtBNVJ4c045eGtvc0pKcUw2S1ZT?=
 =?utf-8?B?bm5DRG5ORlhLaUdabmNyaEY4MHcxekhGcFB5MWZQZU15MEdFY1Y0SWNOcnpM?=
 =?utf-8?Q?70AZyjRj8QUjgG4G9ilmrp8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8e7fb41-6e9c-4b71-93e0-08dc2cbe2aa0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 18:04:05.1723 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gXyTnY7dvWP1Qm5N5oxRECOIIp04Iyr6YF2JYxKHjI2pj/LYpEfnOW+uVe0VIwovKu455ak0MdgVgRUOhV3yfFpZXy5Zl3c3s7jW3JfuWsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8450
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

Resending to include patch 2/2. Please ignore this series.

On Mon, Feb 12, 2024 at 10:46:48PM -0800, Umesh Nerlige Ramappa wrote:
>Once a user opens an fd for a perf event, if the driver undergoes a
>function level reset (FLR), the resources are not cleaned up as
>expected. For this discussion FLR is defined as a PCI unbind followed by
>a bind. perf_pmu_unregister() would cleanup everything, but when the
>user closes the perf fd much later, perf_release() is called and we
>encounter null pointer dereferences and/or list corruption in that path
>which require a reboot to recover.
>
>The only approach that worked to resolve this was to close the file
>associated with the event such that the relevant cleanup happens w.r.t.
>the open file. To do so, use the event->owner task and find the file
>relevant to the event and close it. This relies on the
>file->private_data matching the event object.
>
>Test-with: 20240213062948.32735-1-umesh.nerlige.ramappa@intel.com
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
>Umesh Nerlige Ramappa (2):
>  i915/pmu: Add pmu_teardown helper
>  INTEL_DII: i915/pmu: Cleanup pending events on unbind
>
> drivers/gpu/drm/i915/i915_pmu.c | 192 ++++++++++++++++++++++++--------
> drivers/gpu/drm/i915/i915_pmu.h |  15 +++
> 2 files changed, 161 insertions(+), 46 deletions(-)
>
>-- 
>2.34.1
>
