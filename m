Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B94C7904BAB
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 08:31:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5776E10E787;
	Wed, 12 Jun 2024 06:31:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e31YdxOK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D08510E285;
 Wed, 12 Jun 2024 06:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718173873; x=1749709873;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9zGYYYmuEISBZ/aEh8xLmtvC+eX+c9l0q3STPUPUkhs=;
 b=e31YdxOKNg3yZuLwhhZwyIYU9KlMXGnqzlEVLtpK1ESEj4eNrWxFfInb
 syboby66bP6X7G0slqoIRpSZAHAmr7XG5H+g9fc1scv/Lw04HfVamiPHl
 zWRQIz21v9Ertjkigs6bDDInTp5XQLukMwR46z71PsQqESfiy0i7FKODu
 3GMh96sU2UywQsVyTtVPhitNSgPLrJ8VCRS4EXSXT4kXvqAsWF9t3N2H0
 3geQu0t98EEK+CX4xUHSHJ74BUk387aE/vpeO/fJpKQZGEmNRO/XchSWQ
 eysGcr2XVHf++/tJujWzjsYGl8Hy8d3MDHzwC7PeiS29qqDcOKpDy7QYp Q==;
X-CSE-ConnectionGUID: dO/AX/UzTqKAmxWSTg2Glw==
X-CSE-MsgGUID: ir4akWojR7CZ882iSu/ZLQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="26327559"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="26327559"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 23:31:12 -0700
X-CSE-ConnectionGUID: roiyr/vrRHS12MhWf9bYRQ==
X-CSE-MsgGUID: 0g+PVSvjQaSW5yc61dstVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="62856871"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 23:31:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 23:31:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 23:31:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 23:31:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 23:31:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eaM6SJNp0cUtB7jfZi02Zvicxn4WhIzXNYxCbNvon4cEK56pb4XDSFsZr4btXrbz0frDCiayTbN4CMwZxbB1eNmLoKK943DQKRQg1q338cw6qReysGrg+cBFsMbWT2YvHuI7UHzb0d5wPfKLp7soVESmCa/rquyANyqyqY3LTYCphVWaaPKIRckC+D0IGHjLxNaw2rHMbfm8QDtxqgH/q/tOS7g8cu5fA9EzybqhGMPpr+e1tQB5TCP1wLTJDM2GpKmoNAW3XN/qNAD5D1RoLWAnT8sFHXSTRlJicCUpq8otQxX6IfTM4jt4P07VH07hH3w3+0XNXQDn/UH1b52XDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VSbWKjYkb+ECb+TZvwyzNon20tAc/z73vU3KOWN+Hbg=;
 b=TA23btMK4ZQPNrhT93Al0ism6lLXJCxhHvz3okUPljsNVt3cS2M1GUm8LPOg8lA6UTDj2Tr1upo7WlrRmqPjBElbfFdm7nL11TVbwe/C4biW4faSH91fPMeMIKJW9Bpdi7sNE8tBJlupOaq1dKfL0b85gJT1iJXW9fP7LNA9PE1aem2PsxAMephLvXU0w1xTSRAkzx5BoeczvfkTTxp85ZS7nOk3VsEncxMxL0nR3IXpmrcWqtZeMbslgeCgSVib52oKtca3Nm8gv9UagYkAVPDYuHwLitDke+NiF2FlIRZSqmx/VNf1bjr3ZFBc274cS1WVCT15hNvY3aEcvFvqlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB6349.namprd11.prod.outlook.com (2603:10b6:8:ce::11) by
 PH0PR11MB7635.namprd11.prod.outlook.com (2603:10b6:510:28e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.39; Wed, 12 Jun
 2024 06:31:09 +0000
Received: from DS0PR11MB6349.namprd11.prod.outlook.com
 ([fe80::ded2:b4b:4444:a508]) by DS0PR11MB6349.namprd11.prod.outlook.com
 ([fe80::ded2:b4b:4444:a508%7]) with mapi id 15.20.7633.036; Wed, 12 Jun 2024
 06:31:09 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [RFC] drm/i915/display: Update vtotal math to address 32b build
Thread-Topic: [RFC] drm/i915/display: Update vtotal math to address 32b build
Thread-Index: AQHavIGDlAD/9uIxV0SY97zt/zvTCbHDqt6A
Date: Wed, 12 Jun 2024 06:31:09 +0000
Message-ID: <DS0PR11MB6349BB084701F961EDAED1DEB2C02@DS0PR11MB6349.namprd11.prod.outlook.com>
References: <20240611183208.159878-1-mitulkumar.ajitkumar.golani@intel.com>
 <bjw7ui5vcqt7dgpuqguhfaykts4bg44bchwuoqppzhahwjz7r2@vf5kdxxmzaqt>
In-Reply-To: <bjw7ui5vcqt7dgpuqguhfaykts4bg44bchwuoqppzhahwjz7r2@vf5kdxxmzaqt>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: lucas.demarchi@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB6349:EE_|PH0PR11MB7635:EE_
x-ms-office365-filtering-correlation-id: 49b96821-bf63-409e-31c7-08dc8aa93f0e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230032|376006|366008|1800799016|38070700010;
x-microsoft-antispam-message-info: =?us-ascii?Q?DW8psTJMIOg66MZpHd2aWEfbEQ+mKzFSxu4UwiUiTNoXK/q9YvySTWlvW4SD?=
 =?us-ascii?Q?wXUFotkzh5qE3AE+/fwXd+BxxfLsCt6//8AWiR1yIkee8bN1H5ZV7wXzPLyv?=
 =?us-ascii?Q?XnTrHjIrspabl8aqqiuBWaXoRiigeOEWSeMf40wxGPnXuCTcDrbfUYjFlVz3?=
 =?us-ascii?Q?FC7zap9cFTGPFWjSKI4gLj/OwynCBsG5iFo+5zuEWzePjtaA7tHLb0ZEZSlj?=
 =?us-ascii?Q?5rUz5zA6f4ttRMAmL4KV54U/DQsL8KIlL77jPH/JyiJFPQ+JMOMCODcxRxWV?=
 =?us-ascii?Q?bPJS5SQP18gYi2xQrdeWl3ij/CZLFCRfhDM238oQwiRxlRyutRZYBl2Z/tOY?=
 =?us-ascii?Q?5BMUqK7lVMMM2iOQNmz3TnHn985joeNNHCit38xCHyrMQ36xUV2MyspJHNxu?=
 =?us-ascii?Q?byGOR+mPTDMX3pfIO/NaX7ho2SFHJx9fiNczIgqgN9WqrEmL5WN3Ag/V1aUY?=
 =?us-ascii?Q?0WY+GGROoWmHru8yB6lzhoYVTnlZHL0y8tB2nenQkMbat06Q4iozLoq+6PFk?=
 =?us-ascii?Q?zNkJqK68Kr5bk0F98zuOFf5fDWUopQnXWBlZd0qUouYLWIUxPYeM/Wye3/t0?=
 =?us-ascii?Q?VNyHLd7xL7t3h4mg6E8Th6/ACMERH8r/i4eEfoL8LT0dIN850+DdjWejWKY/?=
 =?us-ascii?Q?keIsb4k56pT5kmo4uTa/EGGH5hKkWL909Wh/gYELoqs5q9CDmLgRzpVpFJ5p?=
 =?us-ascii?Q?smXKR7xREHerxIE5umpGH/wfibxoP7B2RyFMmWJD3UHblFMYoyboglnFpiRL?=
 =?us-ascii?Q?+QmwJaQBkgK+RRd85gQaY5Rxhr4myhaUA9tunXns8wyYUzF8JU6g6G0cUjg5?=
 =?us-ascii?Q?O4W4SXWyZ8kGU12lNJgM281xI1POdU7yMcAk7ShE0fM3jWCGJOg5g5VmpAzo?=
 =?us-ascii?Q?NoxooM43yzFSIgu59LYfB/MZd7MbVeRZIYPMZX17NLE7MtzvfrGJqsaBDATu?=
 =?us-ascii?Q?8NRTFXcK3Kezd+gqW72O7CT88fn2+e+edeYmmrKf46FBluXLf+excaLZrar4?=
 =?us-ascii?Q?bx2oN30waLKD6BTM9uyXXQoysULPWzpGcZSC8vJri8aWNPpLgDnzgFDALE/r?=
 =?us-ascii?Q?OEdUTLBEa0ai2hIwypwRZEE6K8mWLFF7/X0H2mMTKAHacjTvBhA54UEYb0eD?=
 =?us-ascii?Q?x94/6e2IT3TYZJjE5sjaCEkDnc+XC7a4uz4s+QlMhu2uRHZ03/mNhSettjuZ?=
 =?us-ascii?Q?TowGhuiPRTc01E/GnnvuS5+boguKEc25SSkhBu84Pyu/oFrVwS3MdEWACRTc?=
 =?us-ascii?Q?fRxpHujzTVflc4epYkn+CZdJqvwZxGZpJFsU4/6r8SZB9lWcxhfcgAZ0dt16?=
 =?us-ascii?Q?jPECXo1ydDTRjXmFGYytwp1y8i05ocwa+Dc2VghHZYeNrWt8M+dcrBZnoWrU?=
 =?us-ascii?Q?9i/M0R8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6349.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(366008)(1800799016)(38070700010); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JiSdAUZMsH9hjII2GtHrEthT7LyHtcLXI3D2QuZFK/FgPeS4DZkXDIFYgnB4?=
 =?us-ascii?Q?AJf/Qzh+Lea78wmKGB+NxoJPmbF6e4AWRNTCrDodHnxhmm3s4mtB+0ugoKuU?=
 =?us-ascii?Q?oPRur2GgEyXepKsTtXeV3X3K9MhYvaRh3CXQf9bs9prMkgsJquEvRRg3Qvjy?=
 =?us-ascii?Q?srFZHN0c55EpPfl6WgCTywF/8RcyLXQXymUKC6c6ckv5nSPbmiAGXwoZqsHz?=
 =?us-ascii?Q?UsF+lu+MliufQJgrFuX345OcwNzDaVLQu6h9JGyBEsRMUgATvDXMjguAHe2l?=
 =?us-ascii?Q?fG3XL+rJQ7bXOZj8+VQ35RU2u25bDsIUog5rd8do/TKd9VpsGRld74KtNVDX?=
 =?us-ascii?Q?6xF82YOvHLr87JUBHQoTKKVraTn5e3/85KufGjDp5T2VNEmhrmOgmnqxcQyt?=
 =?us-ascii?Q?+hKvkag0o7zw7CRa7D3NuKp3UJNuzoGXihaT4l84PkF4/78L1Oy0w9BZDgYV?=
 =?us-ascii?Q?VdcHx41pP96qSUKWoRmUPFN+EsEzx7SzBKBO5pjZ8yaCAfbTkn/MmFAieMHq?=
 =?us-ascii?Q?PTtcu9loB/nurDJsuR9YG9Y6Yc1VeA1hLxSOfQZ7zwFu57WXFADJ+a3GallY?=
 =?us-ascii?Q?B/y2SMuibUdEfy1tLZkVXVXz/myhPgOU5RJSGZTqndrGf1iQzN2rnD+onLWX?=
 =?us-ascii?Q?vb3cabsNE/3sZ1a2xE6TtOMJK9/kWRmC8sOGfK5s+HGjOGi/mR3tqMynKB6m?=
 =?us-ascii?Q?Y5JQNXGh3suQScHewy8AxUoo8zde6iLPpVzic5b2gfBCoBADVAPhqaEIXrYC?=
 =?us-ascii?Q?kwu6Ipxnrn3Rzg2ekjcwoLMmszw4tnHecnEPYz8ytvwB/H9p4X5nobZWQV9d?=
 =?us-ascii?Q?mPbFfOJlbr4EsEoaK5ar6u5MjzD7xj99ImlL9h2v5f/slV5/R8znoGsqCemW?=
 =?us-ascii?Q?oqnj6jb1XfTHZgwfQegKZD1Ilmp/ohTYIKju+l9LBzOlNUJDhQnhczwxJfru?=
 =?us-ascii?Q?TC8pZZpi9jo1A90vy8sLgHNg5LfZ4eJOthZTZiQBLgNkCabgOSgrw/CY9KJx?=
 =?us-ascii?Q?lUGFYiq6d8Am/F+dtG8I81M5qhQQIWJ3Z88N3wnfa22va5F2U+2t0y+aE52Z?=
 =?us-ascii?Q?bZgJ1PrPns5VWxMTQDznvs2692EQDnxeU3Lh21iE0qe2ZjRgEpNl2lHAiSC4?=
 =?us-ascii?Q?zVV85Zaj8T+hCE1zip7OWmJF9VZTF6kZdHacOkVOvLWO9ULB+/fkQSpkHM7R?=
 =?us-ascii?Q?AVhbCDf7LtvK4qVtjASW2xEAYV4VfVLtNzTiH/nmLpB4TeVEKcwMEauTcnwj?=
 =?us-ascii?Q?+wfjq56Ou8UuvLjyYjrvRerPyvOOyX5KyOiBIbFg+iYapVCK0GfGQBu3S/Cp?=
 =?us-ascii?Q?67FPIKAoedIqngaP5ZUbPHejpfXq7Mxn00Ss25Uh/JvLYmCZaLxhmbKU53zy?=
 =?us-ascii?Q?A9fhVVKthrSdASQ+xzR+kUYoB1MyqxuSnRZzconTR+H1S0pj5lPhEGqobYoa?=
 =?us-ascii?Q?IoX+q7z7KKIaXrrllfsrYy1to3OcwR5D7eWCO1WmKT4BdZp2rVRWZlyF/4IL?=
 =?us-ascii?Q?eaRCELNH5E7FA9jWg2h4Hv1fF7TUHKvOeXXOeS+x1JJFp9J0TxYPb4X/ouwy?=
 =?us-ascii?Q?E6EKJs28tRJl2byLaGslbT37wjt8h7LB9wY1YWgMyLLrs4cFd8Y8aI251886?=
 =?us-ascii?Q?8Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6349.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49b96821-bf63-409e-31c7-08dc8aa93f0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2024 06:31:09.1484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7SkXB6NUAlKWOUQifyHzsTCdWce8j70Uua+qAL4UPsdpt2xfYssNDCWcgUL+paEBJXpOUsAtUN9FAEFQKQa6+JyrseDL5637bEi2v1bHtLQmBsyMihDh9kA71v8HWCqL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7635
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

Hi @De Marchi, Lucas

> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Wednesday, June 12, 2024 10:02 AM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: Re: [RFC] drm/i915/display: Update vtotal math to address 32b bu=
ild
>=20
> On Wed, Jun 12, 2024 at 12:02:08AM GMT, Mitul Golani wrote:
> >Fix few divisions which may not work on 32b builds.
> >
> >Use DIV_ROUND_UP, with that expecting deviate params from +/- 1
> >accuracy in value.
> >
> >Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
> >Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++++++----
> > 1 file changed, 6 insertions(+), 4 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> >b/drivers/gpu/drm/i915/display/intel_vrr.c
> >index 05f67dc9d98d..5112961f6964 100644
> >--- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >@@ -122,10 +122,11 @@ is_cmrr_frac_required(struct intel_crtc_state
> >*crtc_state)
> >
> > 	actual_refresh_k =3D
> > 		drm_mode_vrefresh(adjusted_mode) *
> FIXED_POINT_PRECISION;
> >-	pixel_clock_per_line =3D
> >-		adjusted_mode->crtc_clock * 1000 / adjusted_mode-
> >crtc_htotal;
> >+	pixel_clock_per_line =3D DIV_ROUND_UP(adjusted_mode->crtc_clock *
> 1000,
> >+					    adjusted_mode->crtc_htotal);
> > 	calculated_refresh_k =3D
> >-		pixel_clock_per_line * FIXED_POINT_PRECISION /
> adjusted_mode->crtc_vtotal;
> >+		DIV_ROUND_UP(pixel_clock_per_line *
> FIXED_POINT_PRECISION,
> >+			     adjusted_mode->crtc_vtotal);
> >
> > 	if ((actual_refresh_k - calculated_refresh_k) <
> CMRR_PRECISION_TOLERANCE)
> > 		return false;
> >@@ -149,7 +150,8 @@ cmrr_get_vtotal(struct intel_crtc_state
> >*crtc_state, bool video_mode_required)
> >
> > 	crtc_state->cmrr.cmrr_n =3D
> > 		desired_refresh_rate * adjusted_mode->crtc_htotal *
> multiplier_n;
> >-	vtotal =3D (adjusted_mode->crtc_clock * 1000 * multiplier_n) /
> crtc_state->cmrr.cmrr_n;
> >+	vtotal =3D DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000 *
> multiplier_n,
> >+			      crtc_state->cmrr.cmrr_n);
>=20
> to fix the 32b build you need to build with DIV_ROUND_UP_ULL ().
>=20

Thanks, tried with DIV_ROUND_UP_ULL, build is passing on 32b config as well=
. Change is floated for review.

Regards,
Mitul

> Lucas De Marchi
>=20
> > 	adjusted_pixel_rate =3D adjusted_mode->crtc_clock * 1000 *
> multiplier_m;
> > 	crtc_state->cmrr.cmrr_m =3D do_div(adjusted_pixel_rate,
> > crtc_state->cmrr.cmrr_n);
> >
> >--
> >2.45.2
> >
