Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FBB9A9D7A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:53:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FD8810E308;
	Tue, 22 Oct 2024 08:53:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cgv68/rE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44F010E308;
 Tue, 22 Oct 2024 08:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729587192; x=1761123192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qDVYJhFU54SpIV3qlSz+Rde8fwcCCpd22eOtmknppho=;
 b=cgv68/rEWYo1kYGHI7I1G3NYRBjCP4/u2bt1L7zGk2QRZlvi+9llt0b2
 9VPJ/3fSXPy13vwNi/u1HPHbAYaKr5TSEO2gpkktm/T8RPsNlE9tGzjPq
 9J15CCPPTshe5TuhDyDbm8MbZey7M691B52anuhWlz1t5wHOG2QFQyMzH
 BFERmnRbExbY6RzH7qJXyM0Hl1V0zN1pTjSO2h4OpqBh2bPf3zio/y3C3
 u07KEIwzJM3MeVLlm234GP7cyErjseel2CN/muKV90WKmfJYFKRgs6Rjh
 BcVIlqtlOQVFyql6EsgeBCHy/I82+nYA0q54+RKseEEi8PSvMk2qiUWry g==;
X-CSE-ConnectionGUID: nSy7TWVES/22PRwj300sNQ==
X-CSE-MsgGUID: rua3ZbJjRKmwDFf/3jOqEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40229811"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40229811"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:53:11 -0700
X-CSE-ConnectionGUID: Kxqco0A7Q4qgiWntrNli6Q==
X-CSE-MsgGUID: 2dGVWNMxQnuzmcar4g6Mwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79868468"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 01:53:12 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 01:53:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 01:53:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 01:53:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mY6dTeIDSqwIJNHx+rQNAR4hNeFKpF5RUfVY66iLJCcKptfIK+FVOxG6g6fRxiNtecwY9q0mska1l7jAySF56ZGu+++wJkFaRsNNjISXtIyoJMbpXxEmrviZxdjbsUBsgkVn56mtJMQsyOJSR4fZcBZT9aTjXv9ivi1hYf8sjYTES1CAdiretQ2a0mA0FsXKMdHamkDy/X5eObvLLO6qbkb0s0sS7OdxKCtXgh2IVFqotZ7Kaz3iv9Rr2MwaQ4IN5AgRTIeFZXpDQ7RFLhVRmVWCJrn6k3SR1C0Gzm4gP6iGKOZii11hD9KXJrdtcbl4WHDeLKyPEk/d/FKVuVDm3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZGht3BQzNTeZh/+tilKR7yyvz1NFrgsGwDLdIfDW0GE=;
 b=sBK7xqEqeG1dmYE9SGDTJlSjBJehBXbMkRWT8am0tuklzmWlTK6GsQVs1DAyA9Jfwd6Za+xx+7YghVViTBmGIwZuP4OY/qNsFArkNxDEFJouAp6/gFb5WjM2l+OVNZm9JZjVCJ/D/3bKDc0mhODVHI8WTjIuZJ4rYQOYCFZQLeR5yzcpGeQfQARu0Opyr/89/3SlCj+nRyoSNp5ZDqjsF5mtfLquPauzVtRmWERN5gRwpjF7ce4CZvMJUN7NKYZ9WSJg1ztumAWNOlfqzZI15cclkll3tYBguq0dByiG68krJXLxEDpzGJ6dSdXyx2rbFIrpHWmXLoY3qHrbASA04g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CO1PR11MB4818.namprd11.prod.outlook.com (2603:10b6:303:93::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Tue, 22 Oct
 2024 08:53:06 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 08:53:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Ghimiray, Himal Prasad"
 <himal.prasad.ghimiray@intel.com>
Subject: RE: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
Thread-Topic: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
Thread-Index: AQHbJFQvmh2mxVQK0EuLUzPaQgNlSLKSZF8AgAASZgA=
Date: Tue, 22 Oct 2024 08:53:05 +0000
Message-ID: <SN7PR11MB6750E049267C185625EEC58DE34C2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <20241022072920.102033-1-suraj.kandpal@intel.com> <877ca0y3z9.fsf@intel.com>
In-Reply-To: <877ca0y3z9.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CO1PR11MB4818:EE_
x-ms-office365-filtering-correlation-id: bf55725f-89b6-43f4-5450-08dcf276f1f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?glOvQPomJgFpUqiIOLz0lN3LvAAQpzjMkKHA/vGs5bt3fhpqhhv5alWl7uPt?=
 =?us-ascii?Q?hQn+DLAJ9ibXFuHhvhgCJcFEqTk7i2nw5kfuH5vGIyYVJ0dt0ycGgDsaWkwJ?=
 =?us-ascii?Q?FX3f/qbrE7IuRWcZn2Ok6fJTaPo1VSbBjran5WtrjxVLzr9cWjwKEUy/8w7Z?=
 =?us-ascii?Q?mbTS7M/R+3cubRBHMZgiLNgXRerjoQGt91XZ4MdLMW7mCZyvxL+kzL4BB7qe?=
 =?us-ascii?Q?kzJZcVw6WIHteP+FTKW8oqqB5YlFO6mIcPt5ZqEpkXg08ERZASsJzu+Ax6M3?=
 =?us-ascii?Q?ah+QJTHDYZnSLSmoTLI9CDPnm2zYCsi25NfpjPrVDfZV/NpG07Nxp0RiZaQs?=
 =?us-ascii?Q?7JMNdM5BN3io99CzX0/bXi6WIF1fxwOWsTS6pHW7L28A8lMaFxt1C1qgXD/d?=
 =?us-ascii?Q?cssE5wDSFSGS1fpGLjBNRVzTvgLHu/5ax+quNvu/yfefguX8wWKuE51v5/u6?=
 =?us-ascii?Q?BIGaiAEWk+1FSVw+GlChtb+NrDt8q0ltGvnWreDnS2SHfQVku4SkiPAkITfx?=
 =?us-ascii?Q?QGMxAw5qSoThJbMU+kNST2/TBgqsLZ0t9qQwm4Z/mGyd/1W485zhu6EH3uQJ?=
 =?us-ascii?Q?VYqM8+wb8twfX/qACZ7GIzlA3gXVD/OoiJlE9nRWw78oMkM6Cv21DSwxJ3b9?=
 =?us-ascii?Q?OlXI54eR9uFGfsydFa0nM5MmwfQ9vS3UDjcn6Oao9aVREgTnCwy2DPtlJLOF?=
 =?us-ascii?Q?7GCooj6JFH67Mxv8aBqfjhOp3Lqn2rJvvUqhWldsnyrBEHoMFbK5Yp8e3HVb?=
 =?us-ascii?Q?I6FG1ClMFS5GRVOlfoTfouZzpW+ybPBgEhsY0MJVOFU3mfUrISQswfiwkFch?=
 =?us-ascii?Q?pH9Vq0IdFC/YjBO4v5KIM5NaT6QYXtksNUyz19egE3T59wg5GMUCAMz+eaXi?=
 =?us-ascii?Q?bYoOpWlJiz9jkFOevRLBZhD48/vW8eCxtMLLjDMLPBzrkPaMw62BECdOoW/R?=
 =?us-ascii?Q?dNVzOhjaN5VfuLIxo30SBhCObO/eykrbYEgYHfrfsttxL2gmlKWY4KW2KgiH?=
 =?us-ascii?Q?abns1dMjxekzF3b6FF7v4HNSIxFZDsf+afBQjucXQEpuAvCHl0OsX5S3XM9p?=
 =?us-ascii?Q?3h0mRbFHEJA4FCiFG1xZg32k5n+AA3cyrGHs/vnMH+wlR4aQeP/C1BmHbfml?=
 =?us-ascii?Q?wZA40K3orECyROi+814qJyscUBoq+1OUW5A+fcN4uG761nbQDGUVcBaAXgnE?=
 =?us-ascii?Q?B8byWWRQSuceqKX0qYQe+sjhVtnw8K5Pj5pztzZmsEpLe0Gyd1JLqiJgcJZg?=
 =?us-ascii?Q?HLyj7Evf3US4JDKutRpM3zst2b3ULfnCNmrXYG1D5ze2pjEzMazcID5ZIwHe?=
 =?us-ascii?Q?s0fHZEyPJ/KT/26mKjMqQNjaYVqRCQRYgREs2n8+3yvOOBB+Y5MU6+ANKEfl?=
 =?us-ascii?Q?irxvZHc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RK3sIuWWPrbhFDrCrYbLYBHzzqA3xytKoGA9iI5E503OnUcgg0LnzNTiaNUs?=
 =?us-ascii?Q?nfkvJOHYZKASN6erkxM7F4zp69NutB5/cDNMZIZeOdHxrlTYd5M59Sv9dW6U?=
 =?us-ascii?Q?0vGv+KSlpnWBZlUVysD4yRqcEqh8oHrcclhCTIeiNKteCgUc7HyCb7xLfB/M?=
 =?us-ascii?Q?RNDEnghwGhKdseVOYqWbnVFBnpn2td3hPnOstu2UhnIP/m0/fuElkOcpATQQ?=
 =?us-ascii?Q?Dq4/1Gdsrs6zQ7YZ+5reSkPyXuf/Z2cG8N+viBaa/i+XmOrPg1xH39q3l7Le?=
 =?us-ascii?Q?0/FbwvAl0TmHPh47R3QWIUA5EoQmEXNkJEtSYvzrzjBcMoCKEpkek9fhahM7?=
 =?us-ascii?Q?ZEivC1VtrXU+Kg4e65/bSFCPDcbh2edWLUtPIulOZqlq6fzvAexpWrYhpV7e?=
 =?us-ascii?Q?gVJOZ1UswHnzvG5j+Fmkg6uN5JILd/lXc/3DlK+Y/EiKuG5c5T89jGStpJgs?=
 =?us-ascii?Q?DUITjd42EYmECGYKmkvCnLzArEZw81G+kJCpSbhb7RZMGScmfNwjyOj7Y1oB?=
 =?us-ascii?Q?wXZFMx5kj89efw8ICv8xtWc99FPEKGxveVNbETN2+ozx7kiHy/qm0n80F9Ld?=
 =?us-ascii?Q?PSQ93U1styaGLAo4e7nMS/6nogAlQg7N5ptnGMIOtbFjsIFK3Tbd5g01Wt3T?=
 =?us-ascii?Q?tH3K6d3daPT4QrQpIIbb0FHKYn14Pg5dF06doS+PH4ylPmYWJfeRMNnT08Bl?=
 =?us-ascii?Q?OSW5E4Nh2cowD484rgO8GTUgulsckxRKFGCk5FlTK0mub9BpA9y8Jmx9QLDV?=
 =?us-ascii?Q?Z/erACL5uSNcLMkM+wxKo8Wy+KVCCTnlK/80IVrRuh23QSHbqt2PYipF0UdQ?=
 =?us-ascii?Q?fJNyoI2PhyCVaOc511KQ0K5idXQ3bNSEu4cHZ4GRm4Z4XWEQ2deY60gpvmjz?=
 =?us-ascii?Q?dpIxfMdYhhtu1pwz2Tt/dWIJ+qSQtX9Q0lXaJl5RWNNDkoqgDaw7LtgUBuqW?=
 =?us-ascii?Q?vs5X6Lb17NZ8BaB22iZ2flyn5VRwgrmP7OmX5vaZi/BMHxEzhnfPv8ylXByo?=
 =?us-ascii?Q?iRBFjGRK2//w8sN7TspkPvHN3iWD/qf9V24GT/XlyZUbDaiK6ipIRWAmwzT9?=
 =?us-ascii?Q?L987ZNZ7BreCRx6zw+hZFZvrwY1ajpxOJJfPXghwhcaKSs+L8DZGV1I4jQ9d?=
 =?us-ascii?Q?a/6yjVmN7ZJhp1Q5w3HvgtFhxTDuWf0ewJl12tdBoIhno25X8X+k5LfAaHFE?=
 =?us-ascii?Q?qXdefJyX7zs0+38eyzZF9K7hAF6PlEjR0ECu8nV3/KVxE7J+GR+gRxCVTt7Q?=
 =?us-ascii?Q?uwYxA3GrhdCCtTmEhXZ/rhp54QHjZK3iI4CxgT7Djc5ELxczsq/39WQRgyCp?=
 =?us-ascii?Q?GmyiJgN7oaAigKMjUj3TGZkzPPtMAhDp2476rtL7nkJrze0l7G6tgOsqYpkA?=
 =?us-ascii?Q?Pq5tHB0c//rMbTDH7B9RUE6Ch7MvZB83iURzA0ZjRr/RNmwPtWpq6FA/B2AE?=
 =?us-ascii?Q?FsKvfOEIHWH7LS+bfaLImQ6fcY9hZzSyF9VFdB4XceFQfJNHI57UCjccX7F5?=
 =?us-ascii?Q?W391OFvbcIkgXa+KOcjYp6q/Yvj4VGWdYEB0yvieKyQQDtwAEtZ7nI/LX/I6?=
 =?us-ascii?Q?npbBUr78X0OPIgpsmOqJtWsqVixrKSSYXkQh+CX+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf55725f-89b6-43f4-5450-08dcf276f1f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 08:53:05.8551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 395irKnLNDNaa2MpxGCNksbZUZd2VYWoEwpKr4L/udGztrAlQO/EPIm3JyWq4Ag7UAOgnCndM74rm8YlHeXsOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4818
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
> Sent: Tuesday, October 22, 2024 1:17 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Ghimiray, Himal Prasad
> <himal.prasad.ghimiray@intel.com>
> Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
>=20
> On Tue, 22 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Add check to remove HDCP2 compatibility from BMG as it does not have
> > GSC which ends up causing warning when we try to get reference of GSC
> > FW.
> >
> > Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs
> > requirement")
> > Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
> >  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 4 +++-
> >  2 files changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > index 55965844d829..2c1d0ee8cec2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
> >
> >  bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
> > -	return DISPLAY_VER(display) >=3D 14;
> > +	return DISPLAY_VER(display) >=3D 14 &&
> > +		DISPLAY_VER_FULL(display) !=3D IP_VER(14, 1);
> >  }
> >
> >  bool intel_hdcp_gsc_check_status(struct intel_display *display) diff
> > --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > index 231677129a35..efa3441c249c 100644
> > --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > @@ -8,6 +8,7 @@
> >  #include <linux/delay.h>
> >
> >  #include "abi/gsc_command_header_abi.h"
> > +#include "i915_drv.h"
>=20
> Hrmh, xe code should not include i915_drv.h.

The issue is without this IP_VER used below ends up throwing an error

Regards,
Suraj Kandpal
>=20
> >  #include "intel_hdcp_gsc.h"
> >  #include "intel_hdcp_gsc_message.h"
> >  #include "xe_bo.h"
> > @@ -32,7 +33,8 @@ struct intel_hdcp_gsc_message {
> >
> >  bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
> > -	return DISPLAY_VER(display) >=3D 14;
> > +	return DISPLAY_VER(display) >=3D 14 &&
> > +		DISPLAY_VER_FULL(display) !=3D IP_VER(14, 1);
> >  }
> >
> >  bool intel_hdcp_gsc_check_status(struct intel_display *display)
>=20
> --
> Jani Nikula, Intel
