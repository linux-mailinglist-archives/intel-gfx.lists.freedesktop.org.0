Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNe8Bar2/Wn5lAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:43:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 625814F7F48
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:43:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49CCF10E0B9;
	Fri,  8 May 2026 14:43:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ln5wihiX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3CB10E0B9;
 Fri,  8 May 2026 14:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778251430; x=1809787430;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=GPTzowGMIAJCBPXsA296vw9UxlYPJVDahbmzH9pF++I=;
 b=ln5wihiXeLjFT11dHJtvgZ8F94TE3GSfUYmzVHJK79UecS4mpRqJpJPK
 w+SH0+nBg8bx3PeImStoV9NcKv1u+7H7zNFNIxW6O0X44x4Pz/ZzqHUiO
 aT4xnEKO1GF6ntO1xRJdiBQFk27BJLvCV3ubQSrkWpSD+LlEiEQ2oE+JA
 YGqpi9TWjc1YOL4WM49+T74yxObgwT2tPpqpyOVYEfTbH+3ZFpuI7+vQP
 qTKGYr0UUlVrFkQ4ZaAmwXeAqxzliLpDNXI1WpZp4zA/Mmh/9uyfPIZsB
 qrN5qzOkXuLks8DvBs2G4FgjylTh7uzDVdW7LyvFySaRnDtACoIAlNF4h g==;
X-CSE-ConnectionGUID: +6wQ9CTmTqaMBga01fU3hQ==
X-CSE-MsgGUID: 1SY8+f3LR3W0Mn0663laxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="81784753"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="81784753"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:43:49 -0700
X-CSE-ConnectionGUID: gEfxjuVfTdudhwj5OB7lPg==
X-CSE-MsgGUID: ng9S749TQPaYhTemG2Vs8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="260515110"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:43:49 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:43:49 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 07:43:49 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:43:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fi0iWQmQovDPiI48wYiFaVSIlL0xnsRNZ5QuDaXUPIN5KqJHFaLZDIUWoq2+HKxTA/R+n/kLelYT3BMgw09joF2pGhWPCuJ7qiRWunoM09xnB2s9aZt3izXEkhiRTBjY9DZZXhRe41r/GLHkwf4W3Mo1fGVgtue3hbbnkEcInSV26wZQzZMGJbV/EXpaGyrSFoVFkOC4digNeDdWplUogBnIkjlTVOJIJ/PPWF7x0NJId4NS5C0ac1qhwH5A+VLESWjixMMYSKNc7YsfP1EaZQIhoC5lz755BylahXd3iWiDToIt2LSMkxFWOZymi4IoH4+Eac4LyMd5ccrbWqEw7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RDrGzv6MPe7c6EmUlMKZlO5HCLsEezPLrFQmCqmDGgk=;
 b=KML1K7ObP3ReiovUq5gJLOfZj27wWFZxS9c+AK9b+s1TxLwBUxvaX8cUyzONhledu5Ewqb+i6r/eRxYyKYRr9PFw2Z6YNYdLBYpWYbZGk3l1u05aDbBPpPi8zDcB3C8t5Icd+cL9QmO6IZQPVk5XZU3iJh7F/2mPoBIh3vTRxJqy+uN4XlZGygpKkLy/w+LgLy1+fO/0YzmUFPtf3QwENAC3Ji8rsQVKzm5YqQrhE06C3EKCppPJwM3YUYJ82d6DgBa8i71YlN85wVy+tdRJIaUt3oJs2wHzf2A5ZTt+T1ZcAE+nP6w9XCWoJzhanajWmsmkvFd9xQi2xT25gwmjeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB7044.namprd11.prod.outlook.com (2603:10b6:806:29b::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 14:43:46 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 14:43:46 +0000
Date: Fri, 8 May 2026 17:43:40 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 015/108] drm/i915/dp_link_training: Add helper to query
 pending autoretrain
Message-ID: <af32nNr86dIFZGLL@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-16-imre.deak@intel.com>
 <44165f5747d52722046bd772ab499c4b32beaec4@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <44165f5747d52722046bd772ab499c4b32beaec4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DBC3.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::6a7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB7044:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c48b46e-1bab-477c-5316-08dead103562
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|3023799003|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: zN9T3k2PbvBYCDVLWLQhfOLfQROWWK0mA4gextvX7rzeQwQP7x+X7DAASZ9cRVZs7eLnJObf50FPcNy7YhokbDSp2NTRbytNvuwLkBmjUXd0OmY4qNSo12E3pSqBPX2A8MBrxAoRsHiiAN/uau+4TJnGYCeS7pn4QEgPVKvbETwMiQ4LVOJYzSXUgKcitkUe/BFaPaM4P9JfrBkJQBSJwJ1BaZVvqxot/4EctADmzJbl/62mPxX3PR/GmtQje12h8y6sov7upuorU32cOsKng7Kcls8Xy5OtrhSrm5x58YJLCug3jEjxNrsNT0Stfed3yvzmF29tBDx8bDEDpGr/K7B5YA0iTkhCWlSJM+L2t47/zzaTOKGkbuhhJGyYvvtjJ8n0OsG3VdSPVi5VBY4fpAveMIhqK3RM4mzdyz3ROgDkRiLYH8Es0FSC++mTrqmJllGQsnOvB/w1ieWbxLNVSQm1egQEiHP2Gouulaqj8KJLZe7x7/vskOYoca8Bv5/+NT2tv3+gvTN8CRxVk4HsuzRQLr+vg51J281WM2uMHIR1AAOpvTEzHLweV6JCxQtZnWSxLy9iW7ZKVYR4HqETnQGpG+5H8mGIWtRux5ukl/Q8nf9X7lZ6e8m83AppvNg/F8VopgyzlwILOePqNwNIHDFCOF0WawgpWlf3PgRuHFzcR6xJeUkIq8KUdpweWXXG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(3023799003)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2Iu+frbokoDEzaq63tU7Gn8hKif4JJ+qdtP+oc6PGgP2inwb1Rf/7xxU12cO?=
 =?us-ascii?Q?NvbKF6dJL1f9Ki63XSPPFV9EFMUjhRRfjEmPTD10w3Ki1ChsCdlOTWRc6RsB?=
 =?us-ascii?Q?0BRBqxN63RZW2dSzS4jAO4ODbypEDhSAMcDmcCBy6FiA2oIoeTpK7J5hC8y1?=
 =?us-ascii?Q?BU6BRsVMV5/MjUnWQUa9FKIEypXNRNzvrifkU1DcBKao+Z1W9ZH2qvJw6MPK?=
 =?us-ascii?Q?STMtHYYtTMs0BBAVaUnKoJu6AxpkU3ZuhT8s/EMowO8itBOnaYP4s9FUQNJB?=
 =?us-ascii?Q?dRRGHhj2uta2KMM3OMzN0+KVW1FMz6n4rw3zCz147uZDDlzGubRY7ca7HYfV?=
 =?us-ascii?Q?rLvmEByqXYQuL7vDErN8MOgAH72aPWdjKKuz6qSGTdQBOCQfB66GVj7haQXq?=
 =?us-ascii?Q?/lwMa7ux2bCoCEXijGdrAp2bvmIuw/POx1SwwEOyi7RY4iExBv9EAN/j9RZC?=
 =?us-ascii?Q?AEEqH1Tk9tq1djrtZNMuQnzfxYFC/vfH3kCACs57euLvZ0faUlbEgInVmr4r?=
 =?us-ascii?Q?/0tC+EwQIaTrt7bA9btNFJbRqy2SKoMf7ayJWHmlEG9F6Rc8ltJLgH12M/ti?=
 =?us-ascii?Q?mKUuRbs4IEvWpld/ZSCimf+NW17my9/x9pGXhN9qrowszZBjXV0HGCS1CG2w?=
 =?us-ascii?Q?yEv241eKsNKWuQnPWUbDXE+7cYDH8c6beUbERGF536tDf8MzZyy/9pEmMfrp?=
 =?us-ascii?Q?o65gyIJJht0VuxqXn2wCXIkMq86kfXzRVbEILPc2zE57wkZHH8wl1FGRsdqJ?=
 =?us-ascii?Q?lbYigBL2vxRHb4neSeO/UceOCZAx73A7hqvmGr8iKjZImThKBsIEDjNHjVKw?=
 =?us-ascii?Q?2Ec0Ync8Y6E19UV7xWi93+WPciy30Db2FlU5GB7x2OTUA4RflsrgSw3E/Bp0?=
 =?us-ascii?Q?0VBHRJN5jwB9bjO2U558cbWmVPAaCW+UFVhleikR9GzXANj3dqgDRkEdsVHT?=
 =?us-ascii?Q?unmSTtDsY3/rMro1uVNsVtT63DPpFXh7GFg0NVsrRicE8y4CIAC5UrejmSlq?=
 =?us-ascii?Q?A+8L925mCl8FvmtjAsrVaCd888Yb6VLESe7yx5HFpchb2pp5JvocyMWuSOo+?=
 =?us-ascii?Q?hBYxxK8TUIMpkD8wTskQq4WQJE/fvUPZUdnmym0bdcCkXyP8//RVFW4QTJmZ?=
 =?us-ascii?Q?8Y6sJkdgKoktUWJC72TN1bzVRpWakV5vklOwXirw2FFeJWm2b4bJU6lLtzZB?=
 =?us-ascii?Q?jcYWIJKgHTfnlXD3GbQucgQ01StYx8tScNXRw5z0IFSJutRIRpw3wZpH6ssk?=
 =?us-ascii?Q?wmeOspWX/lIaQqGIB805ka9CfljMbBWdc09ttHNfW0pFP9tF2KrqFyr+/wG3?=
 =?us-ascii?Q?byKoLR5g0krTXHFozCa+FGYS3iHJhvTnTFoS8Nxx437P6wxytzDpJ8gEsIwn?=
 =?us-ascii?Q?plYZtx9Jy4OD0jbbIbGZ1I87kWj9sHCB9WDEF3EhKduZmEBGcW0C/HZcqKs0?=
 =?us-ascii?Q?8nxSw8iwSReRsMI8Uw8k8Zq+VUVqNtgD9gWj8aDKtTBlakhzCGXQF7K4oGp6?=
 =?us-ascii?Q?vfn+w54fwy3nii+tjytHNEpoCrygwP9ZQMkIFUh/FEb4+MJVVA9oqYaIcIGL?=
 =?us-ascii?Q?C5FYjkAlsfS8kbVMRTxG8TqDvQi5tyZg1RF0mHlBWA6ptNLNGKGMoSAlEmd4?=
 =?us-ascii?Q?D2r9sb3NPXbVVU6jaxBgTg+udxJ7JqGRxG/CJ3g0krUvkywr9Fcoaf/PUvZL?=
 =?us-ascii?Q?WElxTL3QCmG/WqppFhWnn2j3HWfxQTR6xlz2RyqIXF/qaIdkgv7gtw3fMvSt?=
 =?us-ascii?Q?a0j1lpQH3Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: I1n9RBVZNaZvsveA6QRG5ovunv9Gh8pmlEQDZfoZ+vafmoWJKOlNj9ENjngvtinB2cDv5VxrDKjfsK+N2mmaV3/giPkubKu335bVpv0JUPuhM5CH5jOUKCnucYQMWQdEq1vzWyf5fcClEkHqYGMGqXbC0tlk7L9F/B9wd6eYmFFT/H6eU0V+Xx9Jkcgesrkj0fdVFARxg1dGHdOiG7grAI8S9q1jT9EeUT0XQ3KH05+3Jv+Clvloetu6JpJMRHeXc1MIQs6PvABdOnXyMtv8Xb9KDH9xq0fGkWpyo8jhPHaKAwm9TKqDQPJ+lnOOxo+kXkmUQPEgGnAasbHCQtbT2w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c48b46e-1bab-477c-5316-08dead103562
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 14:43:46.2759 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TNVWJ/N+sC8vaar2h1cbgPZ5oTW3tY4K0oI7UBCyaP67HnleutwH4++Ilf2I8MN1oW5eyt0GZ2DWCJKNuVJsOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7044
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 625814F7F48
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:32:21PM +0300, Jani Nikula wrote:
> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> > Add link_recovery_autoretrain_pending() to make it clearer what the
> > condition is about at its callers: an autoretrain work has been queued.
> >
> > This also prepares for replacing the sequential link training failure
> > counter with an enum in a follow-up change.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c  | 18 ++++++++++++++++--
> >  1 file changed, 16 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 0c5b7816dfff9..77697a7619812 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1249,6 +1249,20 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
> >  	return sink_status & DP_INTRA_HOP_AUX_REPLY_INDICATION ? 1 : 0;
> >  }
> >  
> > +/**
> > + * link_recovery_autoretrain_pending - check for a pending automatic retraining
> > + * @link_training: link training state
> > + *
> > + * Return:
> > + * - %true  if automatic retraining is pending.
> > + * - %false otherwise.
> > + */
> 
> IMO static functions should almost never have kernel-doc formatted
> comments.
> 
> Note the "kernel-doc formatted". The kernel-doc format requires you to
> add a bunch of boilerplate that's only really relevant if you're pulling
> the documentation comment into part of the Sphinx documentation build.
> 
> Here, I don't think the documentation comment adds anything that the
> name of the function doesn't say already. Really.

Agreed, I will remove this function documention and convert all the
kernel-doc formatted ones to be simple code comments (where I see a
separate documentation called for).

> 
> What's worse, none of the documentation or commit messages in the entire
> series explain what "autoretrain" or "automatic retrain" mean! It's a
> concept the series introduces and uses like it's the most natural thing,
> but doesn't explain!

Yes, autoretrain has a very specific meaning and it's documented later
in detail in:

[PATCH 026/108] drm/i915/dp_link_training: Document DP link recovery logic

> (Yeah, folks can figure it out by reading the code, but shouldn't have
> to.)
> 
> All that aside, I'm very much in favour of adding functions like this so
> that the name of the function makes the code self-documenting.
> 
> 
> BR,
> Jani.
> 
> 
> > +static bool
> > +link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
> > +{
> > +	return link_training->seq_train_failures == 1;
> > +}
> > +
> >  /**
> >   * intel_dp_stop_link_train - stop link training
> >   * @intel_dp: DP struct
> > @@ -1290,7 +1304,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
> >  
> >  	if (!display->hotplug.ignore_long_hpd &&
> >  	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
> > -		int delay_ms = link_training->seq_train_failures == 1 ? 0 : 2000;
> > +		int delay_ms = link_recovery_autoretrain_pending(link_training) ? 0 : 2000;
> >  
> >  		intel_encoder_link_check_queue_work(encoder, delay_ms);
> >  	}
> > @@ -1991,7 +2005,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
> >  	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
> >  		return false;
> >  
> > -	if (link_training->seq_train_failures == 1)
> > +	if (link_recovery_autoretrain_pending(link_training))
> >  		return true;
> >  
> >  	/* Retrain if link not ok */
> 
> -- 
> Jani Nikula, Intel
