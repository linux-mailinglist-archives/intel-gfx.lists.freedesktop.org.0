Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gB9bCm5Sc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:50:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 823DC7494D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 169CF10EAB5;
	Fri, 23 Jan 2026 10:50:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nTWM/qL9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 325D210EABB;
 Fri, 23 Jan 2026 10:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165419; x=1800701419;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0NW/6sXbaJfuaO5HLC15Z21v6KZe695Zj0oj8A5Bq/w=;
 b=nTWM/qL9ib983mP9AyA6SkNavAVAHh9uLde5/MGVLNY/QNPqeoQVKtND
 WDZe62lKEGUAdfGxuCsH3MRauWsg3kFSCzKeYm5+8Qidr4ie06GJOH70N
 YFPpgfWR6rMnmx1acjyIxI/QpfWCtziiZUk+6MJhG/5B753CjeSSKJ/d4
 D2yzr5Frf85L2TXhmrzKnapVIEpQDdioybLLgQB5/K0KvAEu7C+Azh/9H
 ohoZaOlzw7if0lY2gMkvfZx68JT9iq6BlnxEyvhW9923eR/XTXNHpYTDu
 ndLf2OPExdLP/9vyprwmyOMkb3kjkgS0qw9mKoxUHpmEe+4sYbITmBQ2V g==;
X-CSE-ConnectionGUID: xo56Op5jTcepROcaVKNf6A==
X-CSE-MsgGUID: Mj8vyL/DSIaqg6cT3A2pmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="70479122"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70479122"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:50:19 -0800
X-CSE-ConnectionGUID: QDyyys9GR3qg+7wyqxKb0Q==
X-CSE-MsgGUID: LQ4Lf43SQxqw2oY/ZAYhow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="237649039"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:50:18 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:50:17 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:50:17 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.27) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:50:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fuZ2MjCa4kFzLyu7eLFlIIBsM6mue0ROKIato3lapk/Q/nnKc9m7BkpzB/7J8TXlW9PuPBQ967kPZ9Cz7WVAiagYNjP+3+TyhK8p73ZukQajwSGuQrM3cWn0vwD/M+4O3hnLT8EXrXQfI7XHUb1SrS002zPRAvE6Rih06RlacFymbG1gHK5W71C3hr6ZFGMf0lBUXP4fbxsEqDp+/4PaVgyt3+9cVqr/Tk7tbuNDg9LyQwXbUFvbzWWhm+Ek0oJ6O14nZyBUWykP/y4RYf4Cryn0sJI8sWc5EXlRPuTege5XSaMuoccI4VUHVglgHqjBogRCa80K1kEBBdvruDJUYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DPOjuBCZ+rq7MkfNc2Nct/9R/ZlNjquUno0haT+RUT8=;
 b=ii5GdamHTfa7YfhnVjfEzODBY5DjRMcn22a44B68R38Q6xd4uHWdszUyi2fFHohU9Q7osBEBJaOBBNHQQNS0g/ZqioEdOq4EEh4pztRdXc/WeAdk8FSNKc1uxv8rbH6Zb3ShN8axof5xHXg76hwSpGEG6HX06KP7ZvI/uNK3Hmbk9Jve5oNcsAGzcGnuaD72GZUmqdCcm7tkdtL1YWF641XKAuf/jOKcC6P2R9+m5oy+pRbJx741OU+6frsoBBdhUAL2jnD7mhU80zIHYLKkUXOg3ykEzmm0Gs/decLl47748S9WvUqRnAW+yI6M585wDzTMXdjdLc34iLaqM4zbfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB6014.namprd11.prod.outlook.com (2603:10b6:8:73::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.10; Fri, 23 Jan 2026 10:49:56 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:49:56 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 16/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_display_irq.c
Thread-Topic: [v2 16/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_display_irq.c
Thread-Index: AQHciyr01xX2cUENDk6JQRHXMOZWQLVeHBwAgAF5ZrA=
Date: Fri, 23 Jan 2026 10:49:55 +0000
Message-ID: <DM4PR11MB6360FECB9C97CCF198CC1FF2F494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-17-uma.shankar@intel.com>
 <5c2b9a980dc62c6bddf7e7a93d730a0a1526b355@intel.com>
In-Reply-To: <5c2b9a980dc62c6bddf7e7a93d730a0a1526b355@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB6014:EE_
x-ms-office365-filtering-correlation-id: ae9867e8-22c9-4bc0-35b6-08de5a6d257f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wBuJI7RyUW5J18HKYTmvtogCiwLTD/OE1H4YEfVsZ9zehwxEbUqpNvoFLiEp?=
 =?us-ascii?Q?kZRgjle/25B5mdMiCumKkELAMwqODdboKZp3Yx6mn1zJR8zclJ5T5AM4zoxt?=
 =?us-ascii?Q?SjRPXdo7i9tLPLGMSYGVsx43ewpOvmbgEIBmFIrZ0PgL7QLQyDECIrxTnP59?=
 =?us-ascii?Q?D5o3mngDzUh9+mLsNy9FoMdG1TghatZaMiCXPLoJjJrCqOLOQe2Z+sLT75jz?=
 =?us-ascii?Q?kJrdvrX+zMnjXsAldzRJtfnS4je03A+nlAnudj/Gp1Or3IMRVujsebjEvOK5?=
 =?us-ascii?Q?vTfGFxCU7f96cpE0UIUtOCEALFPLLBS81PE5YJg3Woam+B/KyJZU3vkOH3o9?=
 =?us-ascii?Q?fw8y3vziGkjqmSSTU4Q2urE5bC7FWgq/TjUQeg+xB5ydNOFW/cIP48BZZVKh?=
 =?us-ascii?Q?Ap+cohnMaN9ups5y3VAuwKA6zB0+mU2e+lrkSM1xyPAPe2OhFI4EYwYGFggs?=
 =?us-ascii?Q?3XIBVC1d58qYwhM1xjR6X2+kG0WD8mU/zhz+a9Q8NLV8qkZZ88paRDSLMwRz?=
 =?us-ascii?Q?FMI0MVoh19Bm1DWpUKbMHkXcgNHd3e5553W7++KFgDyFXtWf0r1PTucqEnn8?=
 =?us-ascii?Q?tHT/fZq9wcnXAkuSya4b4eZUeJf+g+Oa8noOsTImz+jSFcBHi9P7WFoERqxQ?=
 =?us-ascii?Q?wqNWzvCBbZfLcQ5aMwZ7uYwosse0RJ4eJOc+RRe0oFcNcrIldMGIr9FoSt9J?=
 =?us-ascii?Q?TQqeBQ3ysylj4b8BmyDYXBUBi1IvL3BXGDDnGUV0QkPt38C1sysHZKzDcwjt?=
 =?us-ascii?Q?EFRylDCUFldTugAhVaUsaFk9iJ46taQahsqbQx6V93P7DWIgZrg8KM/D4+m2?=
 =?us-ascii?Q?ddVg6pxNzDHM9VV2XIwee0zhqolg7qZeW8UoTHiqYmIiylA+kHomIcWlr1Ql?=
 =?us-ascii?Q?VUet+MXvSy8AAjwi1cDa5RD8ba/G0SgPkz7qrRkUmOmMck+Hpdw6ctxKH5lu?=
 =?us-ascii?Q?U3Xzz1IjYl0R/Igo5x71sGLm5O1/jPJ3W0x3/pcS68QIf4bZPX8/dvF+AvzQ?=
 =?us-ascii?Q?vwvHxqfJ6G+EgmSCDOGVW6XUV+ZP7f+gxrmG9lVfrIMg+QvV2JfqMQLf+wyy?=
 =?us-ascii?Q?/+nuxAbQi8IgH+iHLBVqZZSI0ONraCHfdVLopFaW7SDwFxMrNWkuOGanIFuP?=
 =?us-ascii?Q?7RgrO+IYifHHDRDKeq9DV5oG4uyfHuOKToDdkjYjjX+kWjicK6C4PUndzJwW?=
 =?us-ascii?Q?VOWtAXr1bVEBvevu17Mq+51oyRQfirMJjL4Z6PJR1pVHdmkWPMFmKbhGvso5?=
 =?us-ascii?Q?sNF1AF/G6XXPexmgEFdUqAu/hg4x0G7fhJ79+BuIkV4YN4+K3O0hTqrqBLbC?=
 =?us-ascii?Q?FzQEstKNy16iJczMbPaXlCEXeyjn1DZ3HQZSrVDDepp0IcEA6Aj9YxDpx1O7?=
 =?us-ascii?Q?Czpp0eozsdsoF7OxSfDa9ZpnMrIs6wwKxQczTiZCnzaYz4Y9jPrAYR/yA7nY?=
 =?us-ascii?Q?3lJrWLvoQeLEtSeTYGcqClIHQm5dTsRBzFCMDqXC1yuZTGmjDv7ii4yu7hFd?=
 =?us-ascii?Q?bTROCaBhNfnGfbokowm3yrxA9gE+66iOHs9lJO4yEJabtoVZqDim5z2Ut/II?=
 =?us-ascii?Q?cMUUxVmM2mtXsfBRcDfTEjHsa1fFuCNmhgzLnLIZIlXIr1gWwstaj3qVvLQg?=
 =?us-ascii?Q?us5T2ng7BE8/iWymUDJvENA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hoGeApFOn6Yy6U2MgObr3Abc7oCgmME6s295dhMhKjoyHepWRgssMzR8u5AZ?=
 =?us-ascii?Q?995XMZWnJgZnK06JqhETu18P+ztXp9afHb1IOeBcx4Ub90k670h/5KRQNBZD?=
 =?us-ascii?Q?0RmBRKgV6gvJCmeC0NkFKRpkNyK+bWjT8ZJPUD5Rn021CBkCmD+uZ0hLVM1M?=
 =?us-ascii?Q?Cl6z7EKAby0yiYUQrjFPdda3Pwt8LhhF1z4mCutLGt7NK0koeH7+VnV2aPEb?=
 =?us-ascii?Q?vMNd+DJM0XKy2TjGpsTMf+jfZfYcEyvkYUevuTpj/O5W2c5BmVECnWCno+zh?=
 =?us-ascii?Q?r1Ep7QwR6/kz5gBWxNYqiJjkNcDyrQk1LYSn0JHyO/BQPxdSAIbwQnFg3AOI?=
 =?us-ascii?Q?w7kIb2aiv4drMnfgpsmMMTSgBdELKKmk4S6vffWfqLy+0XPUWpsWuxQ5zPMp?=
 =?us-ascii?Q?auTDDtma2Ear0A1wGRR9HDRXPuJClHGWPpI4UWR4qpiYaw+8a20DCkYwKQ1/?=
 =?us-ascii?Q?nh/c7y27u52RB5rs6xMh8HCVwmxOwCbI97i5U/UP7fWvnFPMftc3ATFG3ujT?=
 =?us-ascii?Q?aaTM38M7+5kF9mPoQ/XkVIo+xulZ2u7dCezNFCwITSNQlGn0X06A2eh+widh?=
 =?us-ascii?Q?sCgdaI21U02sYG11/zHCRwCID+WfmYnQCL0Or5xuO3u3jkdgZIU8ytL3MyS4?=
 =?us-ascii?Q?yOcJD3iF7HdgXn3iWydjaSpWpl+FlaLbT12Rggb9GrqmOHr7LDPh9x7IxVzf?=
 =?us-ascii?Q?F7UkosIfkC8ZZRv9YpWjopopVVnR9dZeaK59uhTO1G4NlMrnK/O/0j0xYmaN?=
 =?us-ascii?Q?HtyZuvKwcIX0q2wIeLV/g6DaSj68BwQqXZrvOfLQb/uZ8vLcBGAvx35ZWSw6?=
 =?us-ascii?Q?izB20XMtI/GaHCShpAZWod9QLL5/7pCnpXb9TwEwsC9390aZMP9rHH2aL/D8?=
 =?us-ascii?Q?Iyh3Vlg42iiJoaWxjz21fQ7DYoHBaq+OnwX4geYnJjiMNCDVUd1BiGBrIk0n?=
 =?us-ascii?Q?c533mHNmaEhgssnOV8YLeWUnIhxD/eY0tBuSDVOpjdx7xN6YqDmamUyhqEJn?=
 =?us-ascii?Q?sY/qBaDUwNH5M+L3zfdZWRIeE92mDQ64CVy4g2pMOqrni1SzBp93yJwais/+?=
 =?us-ascii?Q?RZeqI5dUs82PrQQRlsTopAGK5qDoeVaPEuD09BFOXBiC3dA0HDr6exh+EEg6?=
 =?us-ascii?Q?aAHP9WNe31ovoX/y5UoqDe2+vhnbP6blD/qU4awyzFl66g5vWkdJ86B3fph6?=
 =?us-ascii?Q?bDOZIJC2xL3Vfcw9/xitgRKvLasaUwQZ1Pbk+J+sjN4AsWPpFyOH/DGzREpj?=
 =?us-ascii?Q?buncMLjZak0e5dSV1eMOUOWm3VAQtJPaoxSnBGip8qGUWCl5Eq0oscirZSGj?=
 =?us-ascii?Q?uigmeeCNfB+0JY3FmrDM0UcYvKU2Nfl/IZusOD3lwxYltiJtxM+BiNgmO21o?=
 =?us-ascii?Q?bwQoQYwo58jyOsDfjWLnvaKSudzvSjtNRKv9fdNriFeM++KXCP/zTS/bywRo?=
 =?us-ascii?Q?5FfDykWdGDS4Uno8ufSVZO0+/XcQ97LyS9zWhoiezMcBT4sYgEPssYAmxFzu?=
 =?us-ascii?Q?SzHFhe06MfTsysPfc0tzxRkm2F+8Vu+0/gFol2jUnWL/n8cLzXFL2M7Q5QM/?=
 =?us-ascii?Q?SHBrrdswFBX8+HdrFgZvvY7VYgLXH7S99lYpq20U7weUadPnU1okB9rQaWOr?=
 =?us-ascii?Q?hMn6mA5sgtPqxIsd3R/5/iatBBVDPpAg27JRH4cYx1R8EkCwc3b06+PYO6Ha?=
 =?us-ascii?Q?/dNMtYpbo7+MrO+YeuXKgyDMkwi/1w7dHBp/+ECq1ixCLqBEX6vSSCxTiktU?=
 =?us-ascii?Q?0LFkqsQ6jw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae9867e8-22c9-4bc0-35b6-08de5a6d257f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:49:55.9650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9KDRZJ88kvpwsPAXt86OtDo7yWApTI9yQ3AXKWfzxXys0zIBhQ2uB2jNxjfca6V4QvNCvsWDj3qs7vhLvYb6Hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6014
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.986];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 823DC7494D
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 5:49 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 16/19] drm/{i915, xe}: Remove i915_reg.h from intel_disp=
lay_irq.c
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Move VLV_IRQ_REGS to common header to make intel_display_irq.c free
> > from including i915_reg.h.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_irq.c  |  2 +-
> > .../gpu/drm/i915/display/intel_display_regs.h | 28 +++++-----
> >  drivers/gpu/drm/i915/i915_reg.h               | 52 ------------------
> >  include/drm/intel/intel_gmd_common_regs.h     | 54 +++++++++++++++++++
> >  4 files changed, 69 insertions(+), 67 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > index 9adeebb376b1..206c0d004646 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > @@ -5,8 +5,8 @@
> >
> >  #include <drm/drm_print.h>
> >  #include <drm/drm_vblank.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> > -#include "i915_reg.h"
> >  #include "icl_dsi_regs.h"
> >  #include "intel_crtc.h"
> >  #include "intel_de.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index aafe71a3b410..fb21b1cf6124 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -90,20 +90,6 @@
> >  #define   DERRMR_PIPEC_VBLANK		(1 << 21)
> >  #define   DERRMR_PIPEC_HBLANK		(1 << 22)
> >
> > -#define VLV_IRQ_REGS		I915_IRQ_REGS(VLV_IMR, \
> > -					      VLV_IER, \
> > -					      VLV_IIR)
> > -
> > -#define VLV_EIR		_MMIO(VLV_DISPLAY_BASE + 0x20b0)
> > -#define VLV_EMR		_MMIO(VLV_DISPLAY_BASE + 0x20b4)
> > -#define VLV_ESR		_MMIO(VLV_DISPLAY_BASE + 0x20b8)
> > -#define   VLV_ERROR_GUNIT_TLB_DATA			(1 << 6)
> > -#define   VLV_ERROR_GUNIT_TLB_PTE			(1 << 5)
> > -#define   VLV_ERROR_PAGE_TABLE				(1 << 4)
> > -#define   VLV_ERROR_CLAIM				(1 << 0)
> > -
> > -#define VLV_ERROR_REGS		I915_ERROR_REGS(VLV_EMR,
> VLV_EIR)
> > -
> >  #define _MBUS_ABOX0_CTL			0x45038
> >  #define _MBUS_ABOX1_CTL			0x45048
> >  #define _MBUS_ABOX2_CTL			0x4504C
> > @@ -3166,4 +3152,18 @@ enum skl_power_gate {
> >  #define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
> >  #define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
> >
> > +#define VLV_IRQ_REGS		I915_IRQ_REGS(VLV_IMR, \
> > +					      VLV_IER, \
> > +					      VLV_IIR)
> > +
> > +#define VLV_EIR		_MMIO(VLV_DISPLAY_BASE + 0x20b0)
> > +#define VLV_EMR		_MMIO(VLV_DISPLAY_BASE + 0x20b4)
> > +#define VLV_ESR		_MMIO(VLV_DISPLAY_BASE + 0x20b8)
> > +#define   VLV_ERROR_GUNIT_TLB_DATA			(1 << 6)
> > +#define   VLV_ERROR_GUNIT_TLB_PTE			(1 << 5)
> > +#define   VLV_ERROR_PAGE_TABLE				(1 << 4)
> > +#define   VLV_ERROR_CLAIM				(1 << 0)
> > +
> > +#define VLV_ERROR_REGS		I915_ERROR_REGS(VLV_EMR,
> VLV_EIR)
> > +
> >  #endif /* __INTEL_DISPLAY_REGS_H__ */ diff --git
> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 0af2c9c8dc0f..a85e2d9ab561 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -336,9 +336,6 @@
> >
> >  #define VLV_GU_CTL0	_MMIO(VLV_DISPLAY_BASE + 0x2030)
> >  #define VLV_GU_CTL1	_MMIO(VLV_DISPLAY_BASE + 0x2034)
> > -#define SCPD0		_MMIO(0x209c) /* 915+ only */
> > -#define  SCPD_FBC_IGNORE_3D			(1 << 6)
> > -#define  CSTATE_RENDER_CLOCK_GATE_DISABLE	(1 << 5)
> >  #define GEN2_IER	_MMIO(0x20a0)
> >  #define GEN2_IIR	_MMIO(0x20a4)
> >  #define GEN2_IMR	_MMIO(0x20a8)
> > @@ -352,13 +349,6 @@
> >  #define   GINT_DIS		(1 << 22)
> >  #define   GCFG_DIS		(1 << 8)
> >  #define VLV_GUNIT_CLOCK_GATE2	_MMIO(VLV_DISPLAY_BASE +
> 0x2064)
> > -#define VLV_IIR_RW	_MMIO(VLV_DISPLAY_BASE + 0x2084)
> > -#define VLV_IER		_MMIO(VLV_DISPLAY_BASE + 0x20a0)
> > -#define VLV_IIR		_MMIO(VLV_DISPLAY_BASE + 0x20a4)
> > -#define VLV_IMR		_MMIO(VLV_DISPLAY_BASE + 0x20a8)
> > -#define VLV_ISR		_MMIO(VLV_DISPLAY_BASE + 0x20ac)
> > -#define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
> > -#define VLV_PCBR_ADDR_SHIFT	12
> >
> >  #define EIR		_MMIO(0x20b0)
> >  #define EMR		_MMIO(0x20b4)
> > @@ -683,11 +673,6 @@
> >  #define PCH_3DCGDIS1		_MMIO(0x46024)
> >  # define VFMUNIT_CLOCK_GATE_DISABLE		(1 << 11)
> >
> > -/* Display Internal Timeout Register */
> > -#define RM_TIMEOUT		_MMIO(0x42060)
> > -#define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
> > -#define  MMIO_TIMEOUT_US(us)	((us) << 0)
> > -
> >  #define VLV_MASTER_IER			_MMIO(0x4400c) /* Gunit master
> IER */
> >  #define   MASTER_INTERRUPT_ENABLE	(1 << 31)
> >
> > @@ -700,24 +685,6 @@
> >  					      GTIER, \
> >  					      GTIIR)
> >
> > -#define GEN8_MASTER_IRQ			_MMIO(0x44200)
> > -#define  GEN8_MASTER_IRQ_CONTROL	(1 << 31)
> > -#define  GEN8_PCU_IRQ			(1 << 30)
> > -#define  GEN8_DE_PCH_IRQ		(1 << 23)
> > -#define  GEN8_DE_MISC_IRQ		(1 << 22)
> > -#define  GEN8_DE_PORT_IRQ		(1 << 20)
> > -#define  GEN8_DE_PIPE_C_IRQ		(1 << 18)
> > -#define  GEN8_DE_PIPE_B_IRQ		(1 << 17)
> > -#define  GEN8_DE_PIPE_A_IRQ		(1 << 16)
> > -#define  GEN8_DE_PIPE_IRQ(pipe)		(1 << (16 + (pipe)))
> > -#define  GEN8_GT_VECS_IRQ		(1 << 6)
> > -#define  GEN8_GT_GUC_IRQ		(1 << 5)
> > -#define  GEN8_GT_PM_IRQ			(1 << 4)
> > -#define  GEN8_GT_VCS1_IRQ		(1 << 3) /* NB: VCS2 in bspec! */
> > -#define  GEN8_GT_VCS0_IRQ		(1 << 2) /* NB: VCS1 in bpsec! */
> > -#define  GEN8_GT_BCS_IRQ		(1 << 1)
> > -#define  GEN8_GT_RCS_IRQ		(1 << 0)
> > -
> >  #define GEN8_GT_ISR(which) _MMIO(0x44300 + (0x10 * (which)))  #define
> > GEN8_GT_IMR(which) _MMIO(0x44304 + (0x10 * (which)))  #define
> > GEN8_GT_IIR(which) _MMIO(0x44308 + (0x10 * (which))) @@ -743,25 +710,6
> > @@
> >  						      GEN8_PCU_IER, \
> >  						      GEN8_PCU_IIR)
> >
> > -#define GEN11_GU_MISC_ISR	_MMIO(0x444f0)
> > -#define GEN11_GU_MISC_IMR	_MMIO(0x444f4)
> > -#define GEN11_GU_MISC_IIR	_MMIO(0x444f8)
> > -#define GEN11_GU_MISC_IER	_MMIO(0x444fc)
> > -#define  GEN11_GU_MISC_GSE	(1 << 27)
> > -
> > -#define GEN11_GU_MISC_IRQ_REGS
> 	I915_IRQ_REGS(GEN11_GU_MISC_IMR, \
> > -						      GEN11_GU_MISC_IER, \
> > -						      GEN11_GU_MISC_IIR)
> > -
> > -#define GEN11_GFX_MSTR_IRQ		_MMIO(0x190010)
> > -#define  GEN11_MASTER_IRQ		(1 << 31)
> > -#define  GEN11_PCU_IRQ			(1 << 30)
> > -#define  GEN11_GU_MISC_IRQ		(1 << 29)
> > -#define  GEN11_DISPLAY_IRQ		(1 << 16)
> > -#define  GEN11_GT_DW_IRQ(x)		(1 << (x))
> > -#define  GEN11_GT_DW1_IRQ		(1 << 1)
> > -#define  GEN11_GT_DW0_IRQ		(1 << 0)
> > -
> >  #define DG1_MSTR_TILE_INTR		_MMIO(0x190008)
> >  #define   DG1_MSTR_IRQ			REG_BIT(31)
> >  #define   DG1_MSTR_TILE(t)		REG_BIT(t)
> > diff --git a/include/drm/intel/intel_gmd_common_regs.h
> > b/include/drm/intel/intel_gmd_common_regs.h
> > index 2b2a7f21529a..9bc234135454 100644
> > --- a/include/drm/intel/intel_gmd_common_regs.h
> > +++ b/include/drm/intel/intel_gmd_common_regs.h
> > @@ -111,6 +111,9 @@
> >  #define   GMD_ID_STEP				REG_GENMASK(5, 0)
> >
> >  #define GEN2_ISR       _MMIO(0x20ac)
> > +#define SCPD0		_MMIO(0x209c) /* 915+ only */
> > +#define  SCPD_FBC_IGNORE_3D			(1 << 6)
> > +#define  CSTATE_RENDER_CLOCK_GATE_DISABLE	(1 << 5)
> >
> >  #define I915_PM_INTERRUPT				(1 << 31)
> >  #define I915_ISP_INTERRUPT				(1 << 22)
> > @@ -192,4 +195,55 @@
> >  #define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
> >  #define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
> >
> > +#define VLV_IIR_RW	_MMIO(VLV_DISPLAY_BASE + 0x2084)
> > +#define VLV_IER		_MMIO(VLV_DISPLAY_BASE + 0x20a0)
> > +#define VLV_IIR		_MMIO(VLV_DISPLAY_BASE + 0x20a4)
> > +#define VLV_IMR		_MMIO(VLV_DISPLAY_BASE + 0x20a8)
> > +#define VLV_ISR		_MMIO(VLV_DISPLAY_BASE + 0x20ac)
> > +#define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
> > +#define VLV_PCBR_ADDR_SHIFT	12
> > +
> > +#define GEN8_MASTER_IRQ			_MMIO(0x44200)
> > +#define  GEN8_MASTER_IRQ_CONTROL	(1 << 31)
> > +#define  GEN8_PCU_IRQ			(1 << 30)
> > +#define  GEN8_DE_PCH_IRQ		(1 << 23)
> > +#define  GEN8_DE_MISC_IRQ		(1 << 22)
> > +#define  GEN8_DE_PORT_IRQ		(1 << 20)
> > +#define  GEN8_DE_PIPE_C_IRQ		(1 << 18)
> > +#define  GEN8_DE_PIPE_B_IRQ		(1 << 17)
> > +#define  GEN8_DE_PIPE_A_IRQ		(1 << 16)
> > +#define  GEN8_DE_PIPE_IRQ(pipe)		(1 << (16 + (pipe)))
> > +#define  GEN8_GT_VECS_IRQ		(1 << 6)
> > +#define  GEN8_GT_GUC_IRQ		(1 << 5)
> > +#define  GEN8_GT_PM_IRQ			(1 << 4)
> > +#define  GEN8_GT_VCS1_IRQ		(1 << 3) /* NB: VCS2 in bspec! */
> > +#define  GEN8_GT_VCS0_IRQ		(1 << 2) /* NB: VCS1 in bpsec! */
> > +#define  GEN8_GT_BCS_IRQ		(1 << 1)
> > +#define  GEN8_GT_RCS_IRQ		(1 << 0)
> > +
> > +
> > +#define GEN11_GU_MISC_ISR	_MMIO(0x444f0)
> > +#define GEN11_GU_MISC_IMR	_MMIO(0x444f4)
> > +#define GEN11_GU_MISC_IIR	_MMIO(0x444f8)
> > +#define GEN11_GU_MISC_IER	_MMIO(0x444fc)
> > +#define  GEN11_GU_MISC_GSE	(1 << 27)
> > +
> > +#define GEN11_GU_MISC_IRQ_REGS
> 	I915_IRQ_REGS(GEN11_GU_MISC_IMR, \
> > +						      GEN11_GU_MISC_IER, \
> > +						      GEN11_GU_MISC_IIR)
> > +
> > +/* Display Internal Timeout Register */
> > +#define RM_TIMEOUT		_MMIO(0x42060)
> > +#define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
> > +#define  MMIO_TIMEOUT_US(us)	((us) << 0)
>=20
> These should be in display.

Yeah right.

> > +
> > +#define GEN11_GFX_MSTR_IRQ		_MMIO(0x190010)
> > +#define  GEN11_MASTER_IRQ		(1 << 31)
> > +#define  GEN11_PCU_IRQ			(1 << 30)
> > +#define  GEN11_GU_MISC_IRQ		(1 << 29)
> > +#define  GEN11_DISPLAY_IRQ		(1 << 16)
> > +#define  GEN11_GT_DW_IRQ(x)		(1 << (x))
> > +#define  GEN11_GT_DW1_IRQ		(1 << 1)
> > +#define  GEN11_GT_DW0_IRQ		(1 << 0)
>=20
> All the irq registers should be a file of their own.

Sure, will take care of it.

Regards,
Uma Shankar
=20
> > +
> >  #endif
>=20
> --
> Jani Nikula, Intel
