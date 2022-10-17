Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AEC600688
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 08:03:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2AC10EC82;
	Mon, 17 Oct 2022 06:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C42D10EB9B
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 06:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665986582; x=1697522582;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mp2DeK33a9j7LWyek4hJ06TxSpMsLvG9rVHHCdMoiiM=;
 b=TOMrextVpiPDtcLKmFMRKmRKPEwiSUHESAhaHIif4/P2yZKqF7dG6WC5
 LHkP6fWWnDVLdb9XRq/wzEAOMUVeQA890zoxP2tgM6nZg6ZyABONPinxY
 z0FvhHayIrq8r0TKOrWhDCt9j3I+ETJMWysBzWsF0D3CBHnPfF4VgM45S
 cvSDndKTg8XFkCh7Ppi6J6BOKBCvcVTCJcIowhavUhcxbxotpzu+Ln8dR
 jUSwdbede3uj4JmYF1HgPufF1KtqO9RqGBRgjhCOvgdBVvS/78eVWCSfX
 dMu5gMQ8t6qiP/7BPDgutPd1/fqlFSGok5euEKsMU0qZ0sDhmTxVErln9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="304456143"
X-IronPort-AV: E=Sophos;i="5.95,190,1661842800"; d="scan'208";a="304456143"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2022 23:02:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="579256898"
X-IronPort-AV: E=Sophos;i="5.95,190,1661842800"; d="scan'208";a="579256898"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 16 Oct 2022 23:02:46 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 16 Oct 2022 23:02:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 16 Oct 2022 23:02:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 16 Oct 2022 23:02:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 16 Oct 2022 23:02:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W+OlxLB3itmIg97XWMrLSxOB3h8FmL+Ni2GU81MJi75UzFm928gvfuU69I+5gAZ49k4o6blF6VyQ7lVzMPnF/0g3mKDdMFJ4DHHTpblNZst+Brk/J6R8FIFVSm/oWpmqZqexf40DLBU32r9KT/EmdrcujpFFcG8qvFwoNwYhmhM3IWAnED7iwqyGrKx3WMdjVe7GpsAl5PeWRb40ntI/LJ21sQpW4o9xihUzF6xhF46qb0EQa3YB6jRXSA+f7PWSHB7WTEEPJ786yiV9xBDllUVwG9DcpYu7njLtReoxEQBUhp15hHVsNmhyl2KtpZJDT00KFxZsNUW00nyIWFAkEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6BDlF9whcGPadyYq9ujqIw+O2ZAhfPlz6YieFPUCgUw=;
 b=hMgmZoT/491bQl00tfY3zOVhiXAZ5YwZ4nrKf6pWfGJlJpYi+xiPm9Fm2cJbG7sS7xbpKIRq2zabeKHBbOZQ9rth5O1DXnqcq3OPYSFQhF6VB+HSBngKbhPu1DBqoDayjqwLBOFIq9nuGnktGlqoGTVeFINvmJv5k6P7Q//OCCezzbaaEcNj3nyzlQqtlpQtHgzUGOvUj7SDz3cnV7cZSYpq0do5id16MFbev/ZmjMxs36QBFI07UPOZqCosHEyTZamNDrjQ643382WVbAHB4CUUJzwGaU5AVIWt9LDbECA6YR+ztHkNkKTkStoUG1rl/1JP2xMVdk/ApBkuyEnNEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Mon, 17 Oct
 2022 06:02:42 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02%9]) with mapi id 15.20.5723.032; Mon, 17 Oct 2022
 06:02:42 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH v2] drm/i915/dgfx: Keep PCI autosuspend control 'on' by
 default on all dGPU
Thread-Index: AQHY38Dd4M1riLkss0Gbos4+F8xaG64SGjyA
Date: Mon, 17 Oct 2022 06:02:42 +0000
Message-ID: <CY5PR11MB6211EABBC5EF599817ED915295299@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
 <20221014113258.1284226-1-anshuman.gupta@intel.com>
In-Reply-To: <20221014113258.1284226-1-anshuman.gupta@intel.com>
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
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|DM6PR11MB4753:EE_
x-ms-office365-filtering-correlation-id: d41a9301-e121-4364-6784-08dab0053424
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SIOCwU+T0kWapb4iogDA153Bc+K0EYbDDMxifaYpJPCEEzhx1LHw0uvKpKzfFHArO/oX1w7yRLQoWpxK7hG6FuGtH0T6ELngxx/ulLGbP5Ah+Sty/LsP1EoscWpEfwQK0QFJCnfVu0f28kUWBScx9aDdDoR8lOYU6WUqG3f/RVMzp2qf9++JME89vYbj+J3+nU1+/i/nYsMRgfSnIe4NCxbybHVO4Uz+WHWcfg1yOMbJo0jSvji36u/dmApXT/v5/7sGS9P2idLAw7MXd1yU/CIXtlMl5YIW8k08Vew1KC6ikfTBld1f5Ni/qPAAOUM+pNEzOAEmAINUfKlmU1hWrTtFHBO13lenRUMIrZZ+vNmTIq0MuJCGt0y2vxMpIB0lkhRE+bEbopnsiEaR9KARExJSPfKn/UwHt1hMnLNNat6FgU1mwmG1THRfJL7VnYmwtckSQb867ze4Uxa5/dpXZvjP77tx6pGGPuQSHA/8gKfE3yyALemgRkHoLEAXQaZ97yhSI8K1A6a7ZNvpkJgtRPqQ61f7+UeKBnPXFgC8Xla1zMhEo0YWheW+1tOqqjlc9YbSY5D/ARXCvB2/SgQJLJQ0zUj+dN3QK7KnhYuY3qI/swrPZeh0ki7aLA+zjvJOC5A2jJ+EDEn/v+VMCVcDuIF/KAH2Wk0IYVPmDaF5axU1p3PXXYeCVBSETIgshQlXkH5ac8wcLZMiB50cRwNv/WW8aNaYRmwRlDSuXIW5xt3fCZQ5cF5CK12G5YcDtGf6Sm3YXW4P4zxVxSsCloViRw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(396003)(346002)(39860400002)(366004)(451199015)(33656002)(86362001)(5660300002)(2906002)(38100700002)(82960400001)(122000001)(186003)(83380400001)(38070700005)(55236004)(7696005)(6506007)(53546011)(316002)(26005)(478600001)(9686003)(110136005)(6636002)(71200400001)(54906003)(76116006)(66946007)(66556008)(66476007)(66446008)(55016003)(41300700001)(52536014)(4326008)(8936002)(64756008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GV+iOa5rgSKgJz31OM4idYLu+VNzzpUOcYIsVvzZATRLI6d2e7cbBn7bf3f1?=
 =?us-ascii?Q?lgQruT4NgNFoERsrGwO9B1Xp/KXnpSlztGOjVQ/epEwllYNp1cu5mTVVLuq3?=
 =?us-ascii?Q?h3PfZwEOQFiwfXPiPJ+jDSTGh8yb8WLOtMRXeBPTYQco6VGqdxd0i7rkBJyF?=
 =?us-ascii?Q?Cj9NxfP488VFjdDUlVZu9tfW7AuYXw92+QAnS8pfnvSAsQvJz9Pnul4Q1RTj?=
 =?us-ascii?Q?tnvmqURRw0FPghX2xdkdZAstNl1ARY/JCi/xRXHlRT2Hz0149cDC2bhD3bSj?=
 =?us-ascii?Q?n6wGAKHTYE/4eJ08pTP4Kt7pHbMfrbCiFhqKvXW++qCJcuc6q+WktKBxW5cA?=
 =?us-ascii?Q?E752yXAlcRKTIjswXlHXhDZhRDjb05LOvgoV03JeZ1N0eZhdH2havkRscRLQ?=
 =?us-ascii?Q?4qfM3eD5jTBbmLGJxsgG7LS3CGC3w28Fz6hGUnGKlsXIl2tHeEw/kKM/Updk?=
 =?us-ascii?Q?4CiKJ7CNNYo7pZgFbs2PQRDGJ5S4jv9FZXOW9+gnDwniKZRtAWPkOeZFGI/3?=
 =?us-ascii?Q?i5t9PxYVuSyUHUEcart4aFkaCD+4yYooej+AOI2/9wIkIlDrUofxSmnLIkjl?=
 =?us-ascii?Q?u0ZSvfM+Klj4k/xVzGrPv8yUdzYSciYJOskL0PapR9p9qTzv6nZQJ7wa77Aw?=
 =?us-ascii?Q?z86izhOWHadlRywGDPAdWn/Z9J9e7EjrAtdnO4XPL8hu79ZIPmJCDLgWZeqy?=
 =?us-ascii?Q?1FbN8dlfkAAO17hRlbCk6ojykJiKNBm63kCxvvcFsBJq9D5u9p6QEfFUqpiU?=
 =?us-ascii?Q?sJaHCgOzTgRJU0ayI24Cw4q9FYjYr4DPp3nytbPclXF3LkxNfp0cLdPcEiKH?=
 =?us-ascii?Q?CLslKIIwddx/PgzrVJLzeRr37VfaRswLcSAbes0kPXw1eg9tWx//9xhRdGQl?=
 =?us-ascii?Q?gBJlSfSCUgx0VxaE5N5cbWOusc42iBmql3nV0+Pi7XF6KODOxOGyRv4iwIKX?=
 =?us-ascii?Q?PQqQfvw+O7a6OHXxBshp2giqOus23DPcBzjdaDtfLxUE9LFFQFZrxJXdokdx?=
 =?us-ascii?Q?0bGPCd/ainyLNAy/Git+IukNno0aB8QSy2/25WvLIhHtSM4lleMj6ZEri811?=
 =?us-ascii?Q?PTdLMeSdhm3JCLWxPZWDlE7o2QU8PhC7RVOFUdgL59ARQowoeDEMy6zLXS5b?=
 =?us-ascii?Q?9iAB9lOcONlnsDwiqGbvM6AwSuBGd0HHdjxlpXvaQ/0LG03xv51tnxpQwp82?=
 =?us-ascii?Q?aRlaaP1AwxFw6t8oe/DCXXgkUqbjqvZJbW5Xl3zFIH1wAGlzK9yzZAYQ9Gtq?=
 =?us-ascii?Q?wJY0ZAWl3j8WT1oYdxMA+RAuSpiuh/HoWdyydWMlZaQgYL8vb8qnde7YiKDt?=
 =?us-ascii?Q?+nR9nsRSPLk0VDGBKrTcy3zOcUn3g4Qgu4WQMIWoCd9sj574bDtxbOl+CRUz?=
 =?us-ascii?Q?zUCJtSMrGdLtLl3azdOSOhCwlkqC8cTlvj0V2EpwO+jXunsFUGc6A4mCb0fj?=
 =?us-ascii?Q?jeyjUzrmAe6Q3RLxR95mEMvf491AvOfRsBj4raB0wge5OXqcgbHso5a6V085?=
 =?us-ascii?Q?IKVmseMTLypN2m9XIzYI31yDwfzIhlmxjS8F/r5Coj0268vYMT5H72Tr1ppD?=
 =?us-ascii?Q?BUrfvCxkU9BL7EoTYAMJL83ygVDQtO8ERuEBpg4M?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d41a9301-e121-4364-6784-08dab0053424
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2022 06:02:42.2316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PL1aIdvKmYpDuprjAi0U036DOZO0ICqwBNUcfYp+JCY3s6EiJGQyvyjtjNgwkqT3ZoNF8nU2mxa6ZWQdlqPu5E67e0mcpGoU5/bZ4N55COY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dgfx: Keep PCI autosuspend
 control 'on' by default on all dGPU
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
Cc: "Auld,
 Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Gupta, Anshuman <anshuman.gupta@intel.com>
> Sent: Friday, October 14, 2022 5:03 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: joonas.lahtinen@linux.intel.com; tvrtko.ursulin@linux.intel.com; Auld=
,
> Matthew <matthew.auld@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
> Gupta, Anshuman <anshuman.gupta@intel.com>
> Subject: [PATCH v2] drm/i915/dgfx: Keep PCI autosuspend control 'on' by
> default on all dGPU
>=20
> DGFX platforms has lmem and cpu can access the lmem objects via mmap and
> i915 internal i915_gem_object_pin_map() for
> i915 own usages. Both of these methods has pre-requisite requirement to k=
eep
> GFX PCI endpoint in D0 for a supported iomem transaction over PCI link. (=
Refer
> PCIe specs 5.3.1.4.1)
>=20
> Both DG1/DG2 have a known hardware bug that violates the PCIe specs and
> support the iomem read write transaction over PCIe bus despite endpoint i=
s D3
> state.
> Due to above H/W bug, we had never observed any issue with i915 runtime P=
M
> versus lmem access.
> But this issue becomes visible when PCIe gfx endpoint's upstream bridge e=
nters
> to D3, at this point any lmem read/write access will be returned as unsup=
ported
> request. But again this issue is not observed on every platform because i=
t has
> been observed on few host machines
> DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver.
> which really disables the PCIe  power savings and leaves the bridge at D0=
 state.
>=20
> We need a unique interface to read/write from lmem with runtime PM wakere=
f
> protection something similar to intel_uncore_{read, write}, keep autosusp=
end
> control to 'on' on all discrete platforms, until we have a unique interfa=
ce to
> read/write from lmem.
>=20
> This just change the default autosuspend setting of i915 on dGPU, user ca=
n still
> change it to 'auto'.
>=20
> v2:
> - Modified the commit message and subject with more information.
> - Changed the Fixes tag to LMEM support commit. [Joonas]
> - Changed !HAS_LMEM() Cond to !IS_DGFX(). [Rodrigo]
>=20
> Fixes: b908be543e44 ("drm/i915: support creating LMEM objects")
> Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Hi Rodrigo ,
I missed to add your conditional RB tag here.
I addressed all comments and changed the Fixes tag to b908be543e44 ("drm/i9=
15: support creating LMEM objects")
CI is green, shall I use your RB and merge this tag if nobody else has any =
further review comment?
Thanks,
Anshuman.
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 6ed5786bcd29..744cca507946 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -591,8 +591,15 @@ void intel_runtime_pm_enable(struct
> intel_runtime_pm *rpm)
>  		pm_runtime_use_autosuspend(kdev);
>  	}
>=20
> -	/* Enable by default */
> -	pm_runtime_allow(kdev);
> +	/*
> +	 *  FIXME: Temp hammer to keep autosupend disable on lmem
> supported platforms.
> +	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PC=
Ie
> +	 *  function will be unsupported in case PCIe endpoint function is in D=
3.
> +	 *  Let's keep i915 autosuspend control 'on' till we fix all known issu=
e
> +	 *  with lmem access in D3.
> +	 */
> +	if (!IS_DGFX(i915))
> +		pm_runtime_allow(kdev);
>=20
>  	/*
>  	 * The core calls the driver load handler with an RPM reference held.
> --
> 2.25.1

