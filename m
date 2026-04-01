Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALVsJBWQzGnXTwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 05:25:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F39423744F8
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 05:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC8110EB7C;
	Wed,  1 Apr 2026 03:25:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dXpA3ABz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4507410E2C5;
 Wed,  1 Apr 2026 03:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775013906; x=1806549906;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V/YNM54JdQ4mhtyfGY+yKL0cKX3EJOTypWqjmJjqoIw=;
 b=dXpA3ABzfGMAOGb0ptTA3C2bP+KKUvTaAulK+FVp8+YYwnkH2wQ6LZJa
 7bxrHJVhgJnjhykdZPZdw5g7G7wrBBieeR24rVQ0ea/Z8IHJcXQzIoxkv
 H1ghMD7zKQVwOKAIlnqGpY3uanAwaaC3YkgIc5Vwo5dJ+JkEwWIBZgHQj
 Kz73ivhjGbF6M6UCV9BSmCKGcGm9BU2K5kEmwI2Qd2QkazHF0zb376n6w
 DNrXTtnQldfiQpH3cj7NpY72KcHxMCRRcXZDhXlkuiSjU0tIWEMuIPyZV
 WpSAngpPTSSjfOH6zoOP5dxmg6WOaXPJjMVED92L7iphs197mAkHPKKWs Q==;
X-CSE-ConnectionGUID: P93xK7OsSRmTI7IG+9Oe+g==
X-CSE-MsgGUID: hgN7CoCWSo6gq1JhMNSMAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75081272"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="75081272"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 20:25:05 -0700
X-CSE-ConnectionGUID: zZjVW/yoTTCXW0Zh38ma2w==
X-CSE-MsgGUID: 9kQ2YiSMSkmVehMmB/Q+1Q==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 20:25:06 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 20:25:05 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 20:25:05 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 20:25:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JkQwIVy1SmwshL4Z6bUfPnQVc9q2YQK/MgQ2UdC7gIkHBA5WLAYkl7xjzopXrmHQdsfoOKpe2ms0fSpaBm2s6F9lUNF191qxuRucpnvfs/6Vjv5b+vu8opCxs/K+ucBcAqt2gyVX0PFp4+0soAur18Y0wR5vBqsgUuHN8hnW8KGh2oBpzRN/E81gYRuk33prEURmQ0imCCqUtFMikmniL9v9WiK1XOa3xeokioreOrBP+1UnZlOzuXVwMdnm7INpqZLaQ6U3/z1a2Oh6qZhZsG1PIXZHj/rva4nvV5b9WnehDtM6h1MEdDCGmrsWPKOPDjV9/DQVYOBe0k4sll0ETA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GCmcm91Xql3uF/oNhLaLg1yzS3bBLZoiRvK/qD9ZpZw=;
 b=oVqjomKUBnDTK0CS1UnvYCpyB1HHrfDYiUN6M+iN7k++ba9QKiZJCrs0ai8N2qRGr3515dvLftRARMobKU/VmXwoIGA2u7eKzA05C/LgPF4nU0227sqPr2kY/F53rNEpuYlQIc8iEiAzIK8ytVrhB4hpAaG+u07SvKadMOqONwE3w1z5ynAQW47E/Ce4S6FpKjPSie0z9WTtchbP0brIMQlQr1AnRkhdkEOg6CUQ9U5eoI6JQrinsEqdTZLnaQuvyMX3HAWySGdFvSjQqohkoGKzNQF07z2qZXlCcOcbnaLqdFqGjqlx90/ZDWaRkXu1VKneO+zpi61bn5WtcJ6kaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 1 Apr
 2026 03:25:01 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.015; Wed, 1 Apr 2026
 03:25:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/backlight: Remove try_vesa_interface
Thread-Topic: [PATCH] drm/i915/backlight: Remove try_vesa_interface
Thread-Index: AQHcpTuT0NOVFGlMC0KzEq9i+0VeAbXJg5qAgAAvJkCAAA9K8A==
Date: Wed, 1 Apr 2026 03:25:01 +0000
Message-ID: <DM3PPF208195D8DBA8DB686A2AFA3F0F4D9E350A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260224031322.2568874-1-suraj.kandpal@intel.com>
 <acxaN8mUWjRue2lR@intel.com>
 <DM3PPF208195D8DF5D98183D96341A33C71E350A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DF5D98183D96341A33C71E350A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH0PR11MB8168:EE_
x-ms-office365-filtering-correlation-id: 83b1a000-3596-4be6-8c8c-08de8f9e423c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: ML40ekb0+84/UUwW2G5K/dK7qTRpIkyWimNOXBBrAglVV8kgitkh7aT5X30VEhFJcXpg8iBOuuMTDIZ7xbW+YStjlE3Daj4ch2uXuJGOPWfQL+gmxzHvpTtvvDsyYeW10QmtaBUVHhZPTYgvJ9JhJHBJxgRivRq8ypCUp4F0OZVE+NyY9whK4wk82WjNt0ZN++sLPbeb7GiHKxzbh0WCuXp3O078U4w5JPeEXtflLbPA+eyIlRyLElj/9A0GadgBrV0jfTU/RwvnFhIaXTRAq3VJlp/QZG10FWqgesPg+UpVBeUtVQt7jiswZDbMmp4Ej4TivPs57KQ/GY/q/hh4YLdwf2SCdxQmfIbFKOsppiTiguoX0mQCko9ZWM/XH26HZC7idfb73ZGlwCJnM4M3S6TEuvGvOYYR76ylH9M3jGvZQUtZbb1jI/nxq70aRSUqr3RXnLTRasgv4bDxHJPmGVWssNeN+gDVzZmmBjbR3VQ0p3PwuZxn9IQyiLz7awjpkiASNyeKfaLLuLtpIsTBNjBq1NaZE6+CRNdzHCNrUKDFkbMAi4HN+UCVb8Vi5dZ3o2qA9lgoltAN27FjSYwxjgOPWhQTsPeXjjiHXtmQjciB515gjQYs4q72B4lqta5WjDi5SVfDJEw+SaXsVoy1YLsh1Ig0PrrX+ikLheITzIiaMPqc4+05uEYNEJHgb3BYOs2KYeQCFNpDmg28htczhjxQ9A6l6Oa+LBlJuv6hd2X3OzBnzFnag6U5+fl7+DOA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?SOETK07nc1gw4A6AVD18lx0pS+ekhuB/pj4SbvcXJPcTkc8l2r/AKHvpLA?=
 =?iso-8859-1?Q?K3aBmEhwBYmV7+uoJk41nfMnY71Mgh8PBzdS9b33yybn0fB7CIGHvB11xr?=
 =?iso-8859-1?Q?t1hu8x3GNLlAHYurEfaftlUyHIqFpNh1q1PNwxfff+fUuUaaYevcbFxg/x?=
 =?iso-8859-1?Q?D4cfBEkhhqjB0BvBf7PGW0euM3pXAMH365iQy94kRgp7myf2dNoDXLSmcm?=
 =?iso-8859-1?Q?oLk6u/SN3XzkekMnWyB5vTnzn72Gtc91EQEMIGmwFc7cJIcfognXd0agnk?=
 =?iso-8859-1?Q?Z+BCDRv8w8FekdM+ysrTCyO/cE1Qrox+iJl4OGx7buNdSkdZ7UWhJU/rpW?=
 =?iso-8859-1?Q?wUfiLcjOGfpIuoDIRx7L5xwb8shthYhqHP0X6jB0uqkm/jVm1DOoWVAU0e?=
 =?iso-8859-1?Q?iQvGSHassLz1cBOVSo6YWffDAqHIC+sGE9T++QZZikhhEt4p33TWWIiYgM?=
 =?iso-8859-1?Q?ExqCrn3UOd0fmQgt+zwvSFxbPfcWqSCRxsCHBE91/M+mZ7PkWMc9KmPS2N?=
 =?iso-8859-1?Q?qixzGmGy/xUOjsvUajnO9kaF9/OjNP4AGEpuXkXLTN3+WbQWJYh7mvPlZw?=
 =?iso-8859-1?Q?+UAoPfbsxyCU2Eo2ZQ/9HqkYq/WvI35ChQnIJA6uU19m6FodHf3MVzOEoI?=
 =?iso-8859-1?Q?3K/34YhjGEVrdLz32x5vCXdy9qqSoVuKqj5ww1AothGxYjKPu5drBcO5f1?=
 =?iso-8859-1?Q?0Sz/tbQXo1tID3FLY/HLOginqYIrl6iBZJtqVkdDC2xS3dtct9bPUeSxkM?=
 =?iso-8859-1?Q?hNtAoRq82XSLw2bfbGKn7YaqBXi8IfeW/P4I9R6/KaneJ+GWvLlGpwxeIv?=
 =?iso-8859-1?Q?k40ypqoJid+C1OpLB9QS9AzgGjWK1XOsnEDlb7DZ3QaAL/sMlWbO1uy59c?=
 =?iso-8859-1?Q?qVafO/u5/zYsPSEjiCnke4utKjw2im3XVGmDUfmIjfzZIWfVfiQwoqjexV?=
 =?iso-8859-1?Q?nZm++vb+sPCXWsfoVfSjPS8B0gzne93P9JvkyFG72fWSxZ2a3Pj2q+vEhM?=
 =?iso-8859-1?Q?yI0mYWaByxb1lxmqwUhGq7aWcriTXeSEZW/v4zCF5nBXdVkHzMH/El/c+Z?=
 =?iso-8859-1?Q?gH0Dbl3v5+ZytofyvFvO/m3Hj5GCwKd1nlHTzBH7SRBTXY3AIQHXxMmIm4?=
 =?iso-8859-1?Q?VHBlEonGmH2na3jS6d4EFKV4pRbw2r0ynir/3A3yiByVXxCIz+lYD3qH1c?=
 =?iso-8859-1?Q?Z6337dXe5jHzqjgNWUZw4+hwjVjZpmlrCzwzqeD7T83FwSa443jcR8vXJY?=
 =?iso-8859-1?Q?SmTX8sSX8d/UVsPrFwMzFYs8TExN7fv3fgIBiRwbE5Rws85QwZnUvnPKlc?=
 =?iso-8859-1?Q?Ees40YF5d6AJ5/Lad1tXiKRjp9kArQN/HlzNq/Sn0Z1a99uyHgjBSbxv4a?=
 =?iso-8859-1?Q?T8fuKSpUR6LNAAgJoI89e0gHB4WhV1dqhZW4H7nPiWrwwxy2jFPGxOYf6D?=
 =?iso-8859-1?Q?Ie190j12U72/F5QXJZAErFHzZQ+VcQVSSPMWj3lFhARrJDAXnhrp6Txcl5?=
 =?iso-8859-1?Q?6Ew5pqkEKtbkkzppY445k+OLVeaXbVCLluR8QznGGkVVOVlMfqDGKF4F6D?=
 =?iso-8859-1?Q?XXSopYSFHnVb4aD119kwie9LnnleCLmAjLRWAjDgnuyxgMjT7CM/gP8qUn?=
 =?iso-8859-1?Q?c6R6d/NaeCAA/kehG3uHSWFFeIkA7Rsh3mqo9Q5mQMqyKjs6oFQ7ViXaWT?=
 =?iso-8859-1?Q?GjYq05PveCx8q6uszlTDgWqCM2/Nlp9w9PrkwHZTdj5wQgNL9mNzmMjB1x?=
 =?iso-8859-1?Q?ZLDz350j4XPufy8sBUh99v4V156UpBsND4A+4NvFNfvhknRxrR6u+UwgLG?=
 =?iso-8859-1?Q?tFVASaKW4g=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Sen+VsIrpzLANdLD13vOJyXB31G+jiQpowwuoPIVXlb9HJ2twSAoyUWoHA93HlSvTb1BYNsVPjTfLw2LgptYQzcX7VuDCgNuRUHOeN5BZwuMn0l973Y51Q+MHrzgjXURLoDtr4QzzHgW9RX0taTJjFkuNZSou49Mb15rpyDo2wbf7IuqgTKMAW/v9PyUBkpBJe5biHrM3MpDxLACrd2cH+3vpdqHXpMbYbJzcOZURycIGOAhP4TWITyX2iRjSCis1zShJSevyUPX6cEor80praoSyuygX+D5J8woa7BfF8l5P/d7eU0reNIGjNwz9QkGrpiC6Z5GEU7uhZk9QrBjwQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83b1a000-3596-4be6-8c8c-08de8f9e423c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 03:25:01.1611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6QqcMY5od2iXPwCdYgKeAZe284mGsH4qqhEud+HxEtt3sohXI1EAFap4nN3xNhL9ydfK9EMxv9DyYDxebejalw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8168
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F39423744F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: RE: [PATCH] drm/i915/backlight: Remove try_vesa_interface
>=20
> > Subject: Re: [PATCH] drm/i915/backlight: Remove try_vesa_interface
> >
> > On Tue, Feb 24, 2026 at 08:43:22AM +0530, Suraj Kandpal wrote:
> > > Remove try_vesa_interface. This is because we now make VESA
> > > Interface as a fallback mechanism for Panels which needs VESA DPCD
> > > AUX backlight mechanism to work but have a broken VBT indicating
> otherwise.
> > > While at in sneak in a small comment cleanup too.
> >
> > This broke the backlight on my VLV chromebook.
> >
> >  i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]]
> > [CONNECTOR:98:eDP-1] Detected unsupported HDR backlight interface
> > version
> > 0
> > +i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]]
> > [CONNECTOR:98:eDP-1] AUX Backlight Control Supported!
> > +i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]]
> > +[CONNECTOR:98:eDP-1] Using VESA eDP backlight controls
> >  i915 0000:00:02.0: [drm:intel_panel_init [i915]] [CONNECTOR:98:eDP-1]
> > DRRS
> > type: none
> > +i915 0000:00:02.0: [drm:drm_edp_backlight_init [drm_display_helper]]
> > +AUX C/DP C: Found backlight: aux_set=3D1 aux_enable=3D0 mode=3D1
> > +i915 0000:00:02.0: [drm:drm_edp_backlight_init [drm_display_helper]]
> > +AUX C/DP C: Backlight caps: level=3D1023/1023 pwm_freq_pre_divider=3D0
> > +lsb_reg_used=3D1
> > +i915 0000:00:02.0: [drm:intel_dp_aux_vesa_setup_backlight [i915]]
> > +[CONNECTOR:98:eDP-1] AUX VESA backlight enable is controlled through
> > +PWM
> > +i915 0000:00:02.0: [drm:intel_dp_aux_vesa_setup_backlight [i915]]
> > +[CONNECTOR:98:eDP-1] AUX VESA backlight level is controlled through
> > +DPCD
> >  i915 0000:00:02.0: [drm:vlv_setup_backlight [i915]]
> > [CONNECTOR:98:eDP-1] Using native PWM for backlight control (on pipe
> > A)
> > -i915 0000:00:02.0: [drm:intel_backlight_setup [i915]]
> > [CONNECTOR:98:eDP-1] backlight initialized, enabled, brightness
> > 7812/7812
> > +i915 0000:00:02.0: [drm:intel_dp_aux_vesa_setup_backlight [i915]]
> > +[CONNECTOR:98:eDP-1] Using AUX VESA interface for backlight control
> > +i915 0000:00:02.0: [drm:intel_backlight_setup [i915]]
> > +[CONNECTOR:98:eDP-1] backlight initialized, disabled, brightness
> > +1023/1023
>=20
> Hi Ville can you provide the full logs from boot with debug set to 0x10e =
and
> also when you manipulate your backlight
>=20
> I did have a commit that checks if vesa is actually possible because some=
 panels
> report vesa support even though they really cannot
> 0fb03890d182 drm/i915/backlight: Check if VESA backlight is possible
>=20
> Also what would be the edp Panel model I can try replicate this issue loc=
ally
> after I find a vlv machine

Hi Ville,
Never mind I found the actual issue, slight oversight by me thanks for brin=
ging this to my attention
Went through the eDP spec again

So apparently if we are only relying only on BACKLIGHT_BRIGHTNESS_AUX_SET_C=
APABLE
BACKLIGHT_AUX_ENABLE_CAPABLE should also be set. The only case where one is=
 independent of the other
Is when we are using BL_ENABLE bit in which case the brightness is a produc=
tion function of the level and pwm level.

Let me float a patch.

Regards,
Suraj Kandpal

>=20
> Regards,
> Suraj Kandpal
>=20
> >
> > >
> > > Closes:
> > > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15679
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_dp_aux_backlight.c | 19
> > > +++++++------------
> > >  1 file changed, 7 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > index eb05ef4bd9f6..a8e9872566cd 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > @@ -644,9 +644,10 @@ int intel_dp_aux_init_backlight_funcs(struct
> > intel_connector *connector)
> > >  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> > >  	struct drm_device *dev =3D connector->base.dev;
> > >  	struct intel_panel *panel =3D &connector->panel;
> > > -	bool try_intel_interface =3D false, try_vesa_interface =3D false;
> > > +	bool try_intel_interface =3D false;
> > >
> > > -	/* Check the VBT and user's module parameters to figure out which
> > > +	/*
> > > +	 * Check the VBT and user's module parameters to figure out which
> > >  	 * interfaces to probe
> > >  	 */
> > >  	switch (display->params.enable_dpcd_backlight) { @@ -655,7 +656,6
> > @@
> > > int intel_dp_aux_init_backlight_funcs(struct intel_connector *connect=
or)
> > >  	case INTEL_DP_AUX_BACKLIGHT_AUTO:
> > >  		switch (panel->vbt.backlight.type) {
> > >  		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
> > > -			try_vesa_interface =3D true;
> > >  			break;
> > >  		case INTEL_BACKLIGHT_DISPLAY_DDI:
> > >  			try_intel_interface =3D true;
> > > @@ -668,20 +668,12 @@ int intel_dp_aux_init_backlight_funcs(struct
> > intel_connector *connector)
> > >  		if (panel->vbt.backlight.type !=3D
> > INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
> > >  			try_intel_interface =3D true;
> > >
> > > -		try_vesa_interface =3D true;
> > > -		break;
> > > -	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
> > > -		try_vesa_interface =3D true;
> > >  		break;
> > >  	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
> > >  		try_intel_interface =3D true;
> > >  		break;
> > >  	}
> > >
> > > -	/* For eDP 1.5 and above we are supposed to use VESA interface for
> > brightness control */
> > > -	if (intel_dp->edp_dpcd[0] >=3D DP_EDP_15)
> > > -		try_vesa_interface =3D true;
> > > -
> > >  	/*
> > >  	 * Since Intel has their own backlight control interface, the
> > > majority of
> > machines out there
> > >  	 * using DPCD backlight controls with Intel GPUs will be using
> > > this interface as opposed to @@ -694,6 +686,9 @@ int
> > intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
> > >  	 * panel with Intel's OUI - which is also required for us to be
> > > able to
> > detect Intel's
> > >  	 * backlight interface at all. This means that the only sensible
> > > way for us
> > to detect both
> > >  	 * interfaces is to probe for Intel's first, and VESA's second.
> > > +	 *
> > > +	 * Also there is a chance some VBT's may advertise false Intel
> > > +backlight
> > support even if the
> > > +	 * tcon's DPCD says otherwise. This mean we keep VESA interface as
> > fallback in that case.
> > >  	 */
> > >  	if (try_intel_interface &&
> > intel_dp_aux_supports_hdr_backlight(connector) &&
> > >  	    intel_dp->edp_dpcd[0] <=3D DP_EDP_14b) { @@ -703,7 +698,7 @@ in=
t
> > > intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
> > >  		return 0;
> > >  	}
> > >
> > > -	if (try_vesa_interface &&
> > intel_dp_aux_supports_vesa_backlight(connector)) {
> > > +	if (intel_dp_aux_supports_vesa_backlight(connector)) {
> > >  		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP
> > backlight controls\n",
> > >  			    connector->base.base.id, connector->base.name);
> > >  		panel->backlight.funcs =3D &intel_dp_vesa_bl_funcs;
> > > --
> > > 2.34.1
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
