Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCkmFwuqcGnwYwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:27:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC245552EF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:27:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF5B10E741;
	Wed, 21 Jan 2026 10:27:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PM2d65TV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7173710E73F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 10:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768991240; x=1800527240;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=SCHDu6nxZGZWvAGWPlB4/kYRckR9ooYOiftJFLZ18uQ=;
 b=PM2d65TVqwSixvxd0rL84YT4tYfb0EKAejRs03trRHXgbj09ktWnboFo
 5C+ypAO7Xl05r6QBjerfQHsIKR+8kg8pSVmu8bbn40ztEkYsebogXpEFF
 d6l7nwb7qj7/un7rkdTSEzNZVsUWRMtAEW5uQs0josfFpBOKL4P+xi/lt
 r7nIhMx2Mt4qxYuHSzsxGiShdXBgC0yFiLsEY2LUdIgPIX17y5EBGKyDe
 l9gk2imHpPkAvI+uueqFV17rTssVvi0mHWHI2NkMtVvLvTck5ebIfTP9g
 YltCCXNt5A72SODDDt/mt8j6335Qa+09u/Yp8QsDyqO8mqpMgkgPDM3Dr A==;
X-CSE-ConnectionGUID: aJGXgR4gQVOyHC+NeokzUA==
X-CSE-MsgGUID: RS2KkamlRZOSp39GzLdBfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="80517918"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="80517918"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 02:27:20 -0800
X-CSE-ConnectionGUID: NrF1qzm9Tvmb2r0K1zlNMg==
X-CSE-MsgGUID: EQCGwVTrT1q1nnaHkc0/Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="210578720"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 02:27:19 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 02:27:18 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 02:27:18 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 02:27:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t8C74KAjracuEy6KpYYC4Wxp6h4DKE3jyPBJ+kLaAWdzIoTChvuP9DRltIn03V7gDL95+u+DdOoGFcUmxNWcJODnnT6u/fbu/s/OCJZuCkwUf9uB27AGI6PTcS947ti4rnMn97D0lV1zpMD3J7V1wUtWWeUVy5Mv6qr4brB4LFYQornda+VtEKq+a1VpZVLrFEJU8pMuknnUu8kFoJgT7GVqqBpN5to6U+aMG3xDxOfpDTHNv9zdKzlxspU93Kpv3lSBsJMdFInsNW7p4GZ1/m+oBdOk2RswPOkKH2ZBMHeRCVKdbMma9bzx5fffQjGq4at+JO+ueUYovVPjBUvrzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Az8wZMlt0Cx2vnR+ry0bRYkSjIBgFHdEDiFXJZvCq60=;
 b=kXoN02xi5xQRF+fnyhs08mYrxgNpb9Mpdt2cscZy5SIJ2tBiuyeDTheBnWUYGqGMGF2l2lySE+b48/3CdVSZglhRBWy9a0bBYC6QsoZLGipFiQ6A4W8Ml74UXUdjbBeeYx9ug/aFv5+U90kHBXucAWCXS44ByYpLlzHYHG1tMA31BlLnTKVHXPZcXVrj+jPJ2LFHGfoAJfO4eLA9DGu7DWECxAwH2sOF7xzjV6qZ/3r8ttYZoXuwcLGPZ1AMG1nQLtFV0ArXBjSyNzPaht1V4ksW2KVGCpmd467Wde1MYy8oQpUVAfs3bGHRdvQJTQaEqPdH/5YErsJnfPHgJcycuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA0PR11MB4767.namprd11.prod.outlook.com (2603:10b6:806:97::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Wed, 21 Jan
 2026 10:27:15 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 10:27:15 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 21 Jan 2026 11:27:14 +0100
Message-ID: <DFU722D101XN.XSKQCV2BXD2L@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Matthew Auld
 <matthew.auld@intel.com>, Chris Wilson <chris.p.wilson@linux.intel.com>,
 "Andi Shyti" <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v6] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <6xc74s3mbmtliqxihtxbok32jobhc26vfm5mu6cod4ywov6utf@ujp3rmqcwmr3>
In-Reply-To: <6xc74s3mbmtliqxihtxbok32jobhc26vfm5mu6cod4ywov6utf@ujp3rmqcwmr3>
X-ClientProxiedBy: WA1P291CA0019.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::23) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA0PR11MB4767:EE_
X-MS-Office365-Filtering-Correlation-Id: 95512c0d-5e05-4feb-293b-08de58d7a566
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NVJLeDRUd2lPejhaSGtXT1kybnQxeUxGazVZVUg4OTNXOWd6L1RnRC9ncjEw?=
 =?utf-8?B?VEpab0crWDBvWDBTaTlXWkY1WTVkSmpydlFHb1JZY0ZiUHVWMDkwaGx1bnB6?=
 =?utf-8?B?dXZOU1VqZHdrUUhEOUMvenJRbVVlWUVkQ0hxOWsvR0U2MjB4SkhGWlJweXlN?=
 =?utf-8?B?Z1d2ZjZYeUd0TGovY0lwalpyQ2hiYWo5eno2Wjl1bkFSelBLUUhlb3dnNWpT?=
 =?utf-8?B?M3B4bWJQMlRaVWgvVi9KeGxiY1l3Q25UajdRS1lhOFNSaXN5RjBkeTZUUUpH?=
 =?utf-8?B?czNKSHViblBHMzhpT0RqcDI0d2UzamRVeFRpcUgyWXdGQ1BaOEQvY1lKUnRR?=
 =?utf-8?B?VERvRkF6V0NTMU1keHAzNW5hUmE0aVpJZExKZ21Fc2RFdUVlNDR1Z1pjaWFY?=
 =?utf-8?B?Y2NTeUp2b1VVSy9CcXZUY3BTMHFYa3FwSFBsY1JGQjlEYndXZFBoSVBuQ2Ex?=
 =?utf-8?B?TmJOZUFSU2NLNWVHemVDaEFpYWJRUitlQlNhU3dGQTdVMTYvRmVtN2ljSHNy?=
 =?utf-8?B?UU5yMEN0bUhGNTc3Y2tzYVpidTdIVHNPL0ZCSXN3QzJ2SDFZOXFtNTB4Qjky?=
 =?utf-8?B?ZUhTa2pZanU1V2NJVmhDWlM2aGF3Sktna00rSWpLNjExcDhBcmFoTHIwdVFL?=
 =?utf-8?B?T0F4bXlkakZ6S0dEcEpHcjVNelFJMzJWSXFkcFpUZTlRUitVOUpVUHpDcjVy?=
 =?utf-8?B?NUIybU15NElYQ0RyYXdNbjVXN01SU1JOZVBKRjkrWENXaXZ3cys1c2VEVG81?=
 =?utf-8?B?L0dVSlZrYmtOcTU1Q1owTTJRWUt0YzkrSmkyQUtRN20yRHlhRG4vODlpUE5a?=
 =?utf-8?B?dTAvQzV5Q083ajZhMHdtV2FFZ0pHWnp5STY2NFZTL294M2FLVlhoL1dES2gr?=
 =?utf-8?B?di90d3ZzTXZVSmNnempVTjhDY1ovLzZBUWFZa3hoeE5WaDJNYkZ2Sml1SlM5?=
 =?utf-8?B?TGIyRXhIZG1QWCs4ZnU0VG53TXk1MTl0NUJyamFMa2dWV3cya3M3a1lka3Uz?=
 =?utf-8?B?VHdkVFdnYjRWTDNnZnJqaWtOMnFxWVFud0pFK0JlZ2ZMVEp5ck9ERXhmUHIr?=
 =?utf-8?B?cEhieERMSHp5OHM2Tk02bjZDNDVtKzFxVHl5QnZpRjdRaXhrNWJPYmxXem9i?=
 =?utf-8?B?NHR4TXVZQVMwMHhZZGpJbUNwY3ZzNkxOMUVIVVJlWXY5eFhzNGhXSHpHOFll?=
 =?utf-8?B?aDFTa1R1UXdEL2hqMldlQm93Ni92dXl0TFlkM1JJcEtpZ3FrQU5uSEwwaGlR?=
 =?utf-8?B?V1laVjcvRm1oV3dlbzFhUkkrMkU5VHM0UGZPZEMvZm85K3hReUJYcmhWR3h1?=
 =?utf-8?B?T2prNU9kSlBqbS9PWEc4Z2lqOExjTDhNcStEeHdFOWNaTkxMU1hIL1J5U01m?=
 =?utf-8?B?QkE0QU5GZ1MxOGNxVmtOSVJHNEY0eHpVVTBlYjQ4N2Y4dGUvb3ZRaGtiMjAz?=
 =?utf-8?B?MFRPY29sbGwvUmNsTytXRkVEQVlSeGoxWGUzZCtJQWpiNVRRL2JQNFlxVSt4?=
 =?utf-8?B?UHkxa3l2cHh3TWlaYXlZMTdpQTY1N1ZCZEdUQmlna0dtOTdtUjZOZldqL3JF?=
 =?utf-8?B?b3ExK042b28wVFFMRlZiN0VKMC90cmF0SXRGUXBpNFpOZkZ3bHZPUW9ncWUw?=
 =?utf-8?B?d09XdXJxSUE1MnBCa0dpZWJSNzhPeEJpM2JIbDcyN0R3NkdMNzNuRSs4VHR6?=
 =?utf-8?B?RzdQUVVEOG5UUGlvVHQ4ZTROVTZzQjZObXd6RWZkY090eFVEMmxETVNJRlJK?=
 =?utf-8?B?TmFCaFBHUGNlQlFJSE9rKzEvSVJHMGRSNURBRTlLSS81c1NxQWxTSWQ5SDZF?=
 =?utf-8?B?Yzg5Yit1dWZMUDNTMmtSaU1vYlNiYmxQN0xpZWNabHA3eUxycngvV1lQK1lK?=
 =?utf-8?B?MnFRalg5eEN2d3kvTS8rUm9yeVJWa3VlRWhBV0pZN3pxSHhDTDJjSnRTaE9p?=
 =?utf-8?B?TnRBdEV1aWRENEhjZXdhWEhKbWpzRjR1ZUVDeUVoZDBEck53cDdvV2lYNFhx?=
 =?utf-8?B?ZGVsR1dGRXlFZk5zbCtmOXlSRXorb2h3YTNJUHpnTXByVDRvUndYWGdHNWov?=
 =?utf-8?B?S1pEeHc0aFJyQk9tY3V3bm5OclZWRVhYOFhpSkwzeWpad3ZJSnc4NDFaUi9y?=
 =?utf-8?Q?O1sA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWtBVkNUMEVLWitJRklQUTFJWjlsbzJMQ2FaRExPNnhIOUxIYUhidUllS3lJ?=
 =?utf-8?B?THNPVGdEbllYd1JuNXkvWDN1azNmT21wZzBjREtaYzk5WFVkeEhFYWdsd0o1?=
 =?utf-8?B?NGpmb2tGc3ZRZGFaV1EvT1UxeFkzREVTajZETnA5UTROUWMzVjFsWExEM1Rw?=
 =?utf-8?B?aHV0ajV6TjB5cWpRRmxNcGoya051OEFoVVgwUEQvaXlYM1lrMldneEhhSG1Y?=
 =?utf-8?B?dHdiSjFOQ2QwZzVnY0xIZEhiaGtrRHppTW1hSlFHMUY1aWtjZG05bFYxRTVS?=
 =?utf-8?B?WFdlT1BOK1ZsVzhYYU1ZTE90S0Rtclk1TDVwM1lyaERDeDNSWnE0QVUvMWkz?=
 =?utf-8?B?aU8yZ3IyNVJJdVplczc2SndlTHdnV2E0L2pFMTZKNE45K3lMWCt3UW9LVWhF?=
 =?utf-8?B?Uk9SMGJQWVhhWitFUEVEUkEvVTJJT2F2U2V3L1pyQ1VlOS9PYmdtTnBWaGVD?=
 =?utf-8?B?M1U5RkUxeGZ6UXEwRjMrNmkwMVczd01yTXhONTFTVjdVVnJtWVJSQWtNcUF2?=
 =?utf-8?B?c3ViTHAyTnpMNHlzMjlnTnBJOFFOMlJmUkxlOG5VcWlNM2xCTjhvbERhblYx?=
 =?utf-8?B?UkxMS0RPSXZWQ3ErWlFtSHY1S1o4ZTZzVUR4ejFESk9IckZ2VHdCcWo2ampx?=
 =?utf-8?B?TFNuT3FVclJRd082a1pENVBKZUwvSDJrTGQ0eFZNREcybTRVa0JaTCtTUklG?=
 =?utf-8?B?aDYyU3RjSi9ncUxmTmMrd0ZvYkVDTDBiRkRPbkF6ekJGdjM4QXhYaExOVmtw?=
 =?utf-8?B?Sm9CcCtTOHcxbkM5MUpqMVFwTmNOYjlQUnhFZy9TM0hvN0c0Rm5rU3o3MlNw?=
 =?utf-8?B?VlU2TFRsVFRzMzFsSUExakphQUxVVjM1NTZSMzJSNlJNa3NMdlZ6WUhlT2hE?=
 =?utf-8?B?RWI4WTk4aXRLM0VZdFVmQ3VPUWZYOVhhTDV6QTZ3ZThVbEZZSDAycGw3Nmtz?=
 =?utf-8?B?STA5ajRSbW1Za0VBN01PY2wwZGlMNTBkOHdRZTU3OVhEQ25taitzZm1VOEtN?=
 =?utf-8?B?clVGblJQUjI4eGlUalRlOWFGR3ZoWDlnNjRNblcxRytSWTlDVlBMQU41eDRz?=
 =?utf-8?B?ZjJBc0Z2ejY1cTl2ak5pSTdIYXVMc0J2MlpzZExJS2hCaWhTeUFtSy9JVTIv?=
 =?utf-8?B?elBwdzBLZC9vSHUxOGJlQTBHRVozTVZRM0RkRzhBRHp6TzlYZ0RlbDhoUE10?=
 =?utf-8?B?ME1DVDV6VjZNRXBQc0lKcWRUVjQ3bE5zdXVXdXNsUTIrdzdMZ1Avb3Q4disy?=
 =?utf-8?B?SWc3K2RJdFBhL2MzS2lZbnNBTk9pdVBGVVZWRXQ2SThaV2JmSUN6UkR5OXR2?=
 =?utf-8?B?VXdoOWcyanYxU2xsaWhWS2hpWUFwdmpXWmFHUnN5ZGZNcEhwR29WcC92c3NI?=
 =?utf-8?B?SXVZdWdmbWFYR3JGZWxiUmZ2c3pEZ3lYWW9BU2FORXlncnFuMnI2ME52UTJL?=
 =?utf-8?B?UTcxQTU3ODRDUCs1VzBiL2N6TmxMN1VJRm9ISmFjNHErdzlKU25Hck96UXJl?=
 =?utf-8?B?OHd1QURXNkMvcG1WWHR6a2JCSlVYMzlaU3JSdHREZ1NUM2g3aE94T2xOWWsw?=
 =?utf-8?B?cG5XYW5tZlNsTUZDblR5MzZSRzZ5V2h6b0dHcndIbkZtdVpBNEw2Sm9hWVFv?=
 =?utf-8?B?ZHdvNFhxdzQxUEdaYjljODJEUkdiR01NeFdBV2RabHVFaE1wcTdkRW40cWN6?=
 =?utf-8?B?Z002dzNhSVE1YjMybDIvL0IwclhuNDM4QjZ5UUNaN1Evdy9WcUlHb0hKQm1M?=
 =?utf-8?B?V1dIVkFqNDJpbExsc2J4S1FyMmQ0UWdrYnRLQ0g4Z2lEMWdqU2oyZDgraUlj?=
 =?utf-8?B?R1NWendJcVViQmQ2ckEvTjQvNEJKQ2wxdmN0RDF1NjhKUElmUzlIazhzTFo5?=
 =?utf-8?B?ZzMwS2pDaXRnYnYwODY0Y1VWOWhGRUlqRFhoUEdNRVpwYkpMQ3poZHAxMlp1?=
 =?utf-8?B?SloraWJhM09kVy8xZG5COC9vS0txMGFLOVRwOUc5eFg3dWlQYWNRNG1OaFM2?=
 =?utf-8?B?b3o2clp0RkVMaU8rN0tSRVExNHZkNjFUZUFRcnM4a3lsbEVpR2ZBUmxKdHQ1?=
 =?utf-8?B?b1FGdnpiN1F0ZERWVG9kNU16U05Rd0NuVmxJdG5mRkJVK1ZZdHNBN1EzbmtS?=
 =?utf-8?B?Q21oVDdkYmVZUmtjcWRVS0lpYllDblByWXJDYTdvTEsyZlhjdFVEWGFtQlFq?=
 =?utf-8?B?V2tPbnBFTENBRGNzbElDMTV6RFNTWS92Qk1rOWJJdHdVT1lKTVlHN2lCVWhn?=
 =?utf-8?B?KzhhT1VKbyt5N2NuQ2hmbjhmZ2ZMRmg1cjFuMml5eG5VZDk4VUxOcytjWElj?=
 =?utf-8?B?NU5XR29qdDU2NldVbjVEcXFPSUZIWE1oM0dvVzUxK1FucGNQZUhqbWUvMDVW?=
 =?utf-8?Q?2AFcTvNt39GYdeRE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95512c0d-5e05-4feb-293b-08de58d7a566
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 10:27:15.0584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DybQxbXTtYf5oM9w7Dueua49CHNgHcDX5kVCfV7wSCGWeoaz6+fS9jw5PpSRPr5ewM/kGGvxEuXyfRbfyozNfVnn/bjs1RRNwFJn+kdBD1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4767
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:matthew.auld@intel.com,m:chris.p.wilson@linux.intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.niemiec@intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DC245552EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Wed Jan 14, 2026 at 5:04 PM CET, Krzysztof Karas wrote:
> igt_mmap_migrate() tests migration with various parameters.
> In one of the cases, where FILL and UNFAULTABLE flags are set,
> during first stages of this test, a mock file is opened in
> igt_mmap_offset(), which results in allocating GEM objects for
> page table structures and scratch in GPU mappable memory.
>
> Then, also in igt_mmap_offset(), the file is closed (fput) and
> the cleanup of these objects is scheduled on a delayed worqueue,
> which is designed to execute after unspecified amount of time.
>
> Next, the test calls igt_fill_mappable() to fill mappable GPU
> memory. At this point, three scenarios are possible
> (N =3D max size of GPU memory for this test in MiB):
>  1) the objects allocated for the mock file get cleaned up after
>     crucial part of the test is over, so the memory is full with
>     the 1 MiB they occupy and N - 1 MiB added by
>     igt_fill_mappable(), so the migration fails properly;
>  2) the object cleanup fires before igt_fill_mappable()
>     completes, so the whole memory is populated with N MiB from
>     igt_fill_mappable(), so migration fails as well;
>  3) the object cleanup is performed right after fill is done,
>     so only N - 1 MiB are in the mappable portion of GPU memory,
>     allowing the migration to succeed - we'd expect no space
>     left to perform migration, but an object was able to fit in
>     the remaining 1 MiB, which caused get_user() to succeed, so
>     a page fault did not fail.
>
> The test incorrectly assumes that the GPU mappable memory state
> is unchanging during the test. Amend this by keeping the mock
> file open until migration and page fault checking is complete.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
Looks good to me.
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

