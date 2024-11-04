Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 384A89BBD36
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 19:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5363710E4AD;
	Mon,  4 Nov 2024 18:21:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BWtnWKqX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C71110E4AB;
 Mon,  4 Nov 2024 18:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730744486; x=1762280486;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NOHhXxwdFAiMuhRfhRFlSYCA26md4iDwI07cKzPfGP8=;
 b=BWtnWKqXZ706bN/jLrxf59FkZH5vzMzr7G8jZqhewSTBuoh9HNtRoRWM
 01GCjTsjRGX1Arsd3lhmAqpaWfkhqVAtedgjau6iPpejjTXVVZ8NxyMg7
 BsiSgLe2wAOXtUIOVggXzg0r8XEWkXR7LZJzmlwOTQPhzEiceJ/2I6Oug
 j2qUQDBt6vtCv13n2VlHfgX+xWgUWCr2l0sLXle6dEsSbDCWwd/vICGs/
 T21cHJPNrcMFmDiDgEXoFzcSCPUunB9YTuJV0bjumo6VaxhVkUR8l5pQn
 CGFEBwKzbWcBtVL2aIj4fFM/CovR5vOuooqY3NBgEvK+r+46yVpsPhUqG A==;
X-CSE-ConnectionGUID: sgNXzIpdRQSa0HYbkwuOXg==
X-CSE-MsgGUID: of1/++TKRV+03TNfF7Z2nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="18079511"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="18079511"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 10:21:26 -0800
X-CSE-ConnectionGUID: yX5PFgBrSledxvH1MFxW2A==
X-CSE-MsgGUID: KbbSE0LDQlSjHtFTFIaAXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="121213612"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 10:21:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 10:21:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 10:21:25 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 10:21:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qtXqXnyDRi5xUBN9vUTozNv0PPsiOQWVfBNaauz+Be6xoI1fhnK/YLNQl71j/rYiPIqI4tXb2s/UcxHMz3TfvkflK4d0GM2C/B62W9TgsEpCee3YdVKh8krU2Ce58D58dZzai6pM5GXSJNw9QdJP7xVyyVwcMCZqbtmj2XLvU3tca/mmvkZ3APevUs0y4UnEkix8NMQwCDUmuezb3jbr4aWCDJQHGio37ua2sWprGvJymqGlv7OBvmc6dQP3hoKOFnXSUZlCph1j0XjDbL4dWhP+PpCXssonIn6HwnsA0bbpsMroWrP/qDsLYFBgD6c0NnjwKyz4CIB+9Danijoiiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k6MOHezmBPP7B1Rez6yL7ZrElj9OFK09nGNGfbymSSA=;
 b=iRNyOY8wUCUg6+wsXB7msT8UIu59SrNrR8dQ4RcqBuyKAhAyzkRePBlbt+6UxJkpqmx5xj4AKGa758BuTZoPi24VoF8jg8n1BYtBykJhuGFuqMtZEp8Qr11Gm8nngFvwc/yL/jgIcCUF+w2PAxgtOUvz7KzKMTOfiM0aR8/NwKF4B3SlyvNTYHAPfsyVNEQ2+t3pw1h40rmZCsN0+Me1qklptneUsfpPTbAbdiCBTFDebJTwSoeVeTQBxD7LcUxO1PrK54GMml/Z0z75FdyhCPVhc8Rt3Lgmp2aIj5npwcPKMKMwlZ7g+VnZFLYWSeuyn26N1dyVv6d+jzq6j/aFIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM6PR11MB4593.namprd11.prod.outlook.com (2603:10b6:5:2a3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Mon, 4 Nov
 2024 18:21:22 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 18:21:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Thread-Topic: [PATCH 2/2] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Thread-Index: AQHbLpQVboVPjEFqPEOb2/rNA48F3rKnbcCAgAAA8NA=
Date: Mon, 4 Nov 2024 18:21:22 +0000
Message-ID: <SN7PR11MB67503445C702FE09AD568483E3512@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241104083143.631760-1-suraj.kandpal@intel.com>
 <20241104083143.631760-2-suraj.kandpal@intel.com>
 <20241104181457.GK4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241104181457.GK4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM6PR11MB4593:EE_
x-ms-office365-filtering-correlation-id: 52f59ab9-0a70-4ebc-a789-08dcfcfd7caf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?yTDkq1123YahoG4oEoe4lyIPUe/NXqymOP2TVMlSEdkkWvA+W33V5MnmJOTC?=
 =?us-ascii?Q?cq5RiZEIIp+ql6UaFB0nGsNK6Ifx4j2KH3XrEe3idXiHA1/9yUUgQOFTtKy8?=
 =?us-ascii?Q?rgwGITBbLC+CY8IlUCCz78CCoXEW5feOPrpDP9FuiPQvcS6tLb509eYg2kTC?=
 =?us-ascii?Q?+jOL6VayqYJD0AddCqWwNXLbU1+lgrHOP3bD19CzNZk+WoU2pNzh7wZUKOZM?=
 =?us-ascii?Q?xjEE3wmVf5o84YL3xrcVSSfhRXkQctNb5DlXhqsXWbpQQoG0yqyp8PWjiBfl?=
 =?us-ascii?Q?VVtV7u0Efdu88M4501/at9NfCSaZp5cdWgLIQ8jPgvUve/w8ATV4TU9vVGvY?=
 =?us-ascii?Q?CJ2j8dOvNC8Uzr75BZ1OyoNsLMWxRGonuPqFlTULs3xInoRzy8y+ahg7oRlQ?=
 =?us-ascii?Q?hGyCOVlvlQE5MMkt2bafEXZ0IqwKloY4Uy2NxHgIDgtlPt1xWVUWzl4ApCs6?=
 =?us-ascii?Q?hccgmQwt6v6HjSZ/9xU22RLr0so4knAiriwcM2CdYUbhcqWhc9bRncMyd1ri?=
 =?us-ascii?Q?vhEdgBxNcXiM1J3jLz+NUI6FRVpUlcDLbJ8b7s2wii1yD2VkRmaECDKLS4NJ?=
 =?us-ascii?Q?6g7utRcKaspNvOY8aPUzBxxzwPyWPidGGc/m6yL1HhbMNTIhfnnRdXObDNvS?=
 =?us-ascii?Q?dKafXqpZNae2udB0o7CBfzAybCLcYjPraiyStYR0fbYdr3JPZfAOyd25wGb7?=
 =?us-ascii?Q?JE8aZaBY10vCgl+UZxm9MeMpPrMvh4P6y4xkQtMxVMwv1um4KIpJqi8TJh4W?=
 =?us-ascii?Q?YiFSkX9Mt2xSG4hvDUT8Y4paUlvUrDtTvzUtVlilZDcIW56rNHphzjEr1EeM?=
 =?us-ascii?Q?uXPstDlhO1ABLNBHWmRgVS6y7w52Am5kJndUT7Jbox9hYq2CPwP9cbCoEDLp?=
 =?us-ascii?Q?y4Pb/JXFQ+5XbfVIpF9eOxKBb7BUzeLKZtlVQj0+0ZGUQk266V30UqwdSmI9?=
 =?us-ascii?Q?idmpPQMuOHgS4NnvVHqDbqTeUQzQDM2g5C9p4Gl1g6fDPKR2NQXJpADIPx3P?=
 =?us-ascii?Q?ltn5Jl5koDzRZjB111IziHLZJwd6cQtjYSp0tKIghdjBg/savaqt2U+qu2Al?=
 =?us-ascii?Q?lp8OE+7EBoSA/v7Q+c/G9WNZIFx0q5EhrIIyZJ++y7wnX22a8yZfkR/aSVgD?=
 =?us-ascii?Q?ethfRBM+MRDCog5vCzVLWHXuVd6LjZNFffVfzWYwK0gGa9EVA3MTsZ+VkCuU?=
 =?us-ascii?Q?EfK9tLQPiYHZJvjdQ/4fSIirXKQNnScaVZeuA1n0Z+3PPAu73KBbkwgWJ0dM?=
 =?us-ascii?Q?yJzPwYTDl56Hh9Gle0KuUJ03LoqCIrXMvW9izoVecy312T0TJf8ug1Km0UOJ?=
 =?us-ascii?Q?iC4waoCYjcFUlP6tHK7zYOibclD3NAfMHlYHgHPQv5KdNmS+BC+jrB/6X+V9?=
 =?us-ascii?Q?++h6VGc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FnmyPTiBpJBSn4bk+qgFEGlj0eG7wEtw+QFJ8uR3c6dwFw5EXVxtgZb7ZTD+?=
 =?us-ascii?Q?/8JhkgUqRYgICatbVa3r3iG2WG8Nl5obHbcb8XnGWWuL4h6jQS6+49DoeU04?=
 =?us-ascii?Q?a/QpNgdK/MTGCDOSdbsGPIDeMNhiJyGAcf4Hf6prwNJFtJxnUOZFg8Rzhzbs?=
 =?us-ascii?Q?HDVKYb5ULF1/Ct+lCl+SBvfCIqcJlbxhUcBQTyXBNJsx2s1WFJAvLz4k2Vxj?=
 =?us-ascii?Q?wjQ+vBS39poVJoMxS0BS3cDDse9q2NYdEgrhuYjEHcH8T3Bp/Ia7wNkFgsD+?=
 =?us-ascii?Q?M4qY3z7vNKZWhG3Qqn6iQrjMtBo/JEPMxDn3U6Tt+XBSdYMo8KdJ2d2U5F1/?=
 =?us-ascii?Q?KFeZRthdFTVjpsnjVbOnVtz82FNlomfx0jGNLNjspUv7QVMVh9V4QR+dsvqB?=
 =?us-ascii?Q?ISDkNtHlw/zSq/xTbCugT0GBA0iQxfQmgQbZ8Mw+0sjJr7Wv44Pi8qHU9+Yz?=
 =?us-ascii?Q?nvci4jhrReM4GnLS213dW5szLzYUq+Ts/kDIPHIfNvRsh/er+mQ14ahW2U1V?=
 =?us-ascii?Q?7g9MSiWRNtQDpUDDT0613UEDMx/8DbkrUks8MUBVQYSZd0rPxegm4Sg27OUa?=
 =?us-ascii?Q?aY38Z/9E3KU3hTT7eNqVb9yUuH2lr1UyhQ5q35pkWWFPug8eFRRORx2DIslb?=
 =?us-ascii?Q?OpFMIdoj/wqV9JAGyRvqPLUFtKtQBCC40KxyB9GtO3fh0+eY76eCoht+W1xg?=
 =?us-ascii?Q?s5xixqIZTFPh776CUZRKYTJpYuy4AQnGLR6MdCKMbm2D+Gqo+Q02Qf6dKJF6?=
 =?us-ascii?Q?/MzZduXNjY7D6uJJ5WlbAEfGNTMtuWvNpivl4+3CNbHWBGNHHhQin/RpRLw2?=
 =?us-ascii?Q?vqwUS7a8B1wi/UDU8xKuvdaR76Arv3aRJf3MW/xcNP7H9ILu32h1CXCSZwlE?=
 =?us-ascii?Q?1m8EjJGuxB4OQ8fkSv9fMW7knUcwlO5xhbRYApGaMUKEyNk+ysXcPZU6Ob18?=
 =?us-ascii?Q?FRwr7INTd0DmGPoOlnojWGfq0OFK5vRpSdSoKuaVSsthu5JWPywZrpKhYGGM?=
 =?us-ascii?Q?cDzo4283YGjWkPAC5+NJRzoN1WgRcZlhxaRF/i5e1RbI68bCA5dFdQbukd3p?=
 =?us-ascii?Q?szkb+QUEoQFdjQwvttMvds5tbPeZiHsbsQo/nBYGNJxsMJMIW4VsdYvKgFyw?=
 =?us-ascii?Q?8TLEa/2VOMxCnloVFdIAAA6qWlVkovhlmx1KtyOGkjGi8/ybq7A6KqLbraBz?=
 =?us-ascii?Q?MleQ/iL6Mykac52GcVSzsHFfZL4oOqbWY2z7kMMKiEJ9kblRTsW5AXMnWLVv?=
 =?us-ascii?Q?/n2tqBhHHiaJWLYvo+2U8zEzE00FWQC9dlz0kepie6fip7VeE6lqgdmgcqXt?=
 =?us-ascii?Q?Kyyu1o7PkUuGvOngTCHph9+HqxBGYcTPDgc2zTeUmUSuQkTt3ZKrMquOTQAS?=
 =?us-ascii?Q?WXrBJpqgBnxp8+yXBef5F2uyXFcUs2NwKo7FBk4wcX3xJwVOM6PLebiHbMxz?=
 =?us-ascii?Q?uvrSdsaAwIz0y2Jc9mv+RKHpZMqAeXowwFwZiujRpm54Xr2YyZGGDThG7Ebb?=
 =?us-ascii?Q?avN1Kuzn8Z9doMY0ifScpYC9vDtEc8NXE0TrhE3LuUZyz7OyS365fohHxcdH?=
 =?us-ascii?Q?9J+LQHR+abvrFfMO5cvSIFK40wU/PbvU3r11IkOB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52f59ab9-0a70-4ebc-a789-08dcfcfd7caf
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 18:21:22.8014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QSxbNYAIRyM3n9qpiUSPrD5GX6IZYNLmuAU3cxmQkyYf1zIFiUZcSCLCQXzzUduhpMQuH/KEV2dLLh5myCZimg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4593
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, November 4, 2024 11:45 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 2/2] drm/i915/hdcp: Handle HDCP Line Rekeying for HDC=
P
> 1.4
>=20
> On Mon, Nov 04, 2024 at 02:01:43PM +0530, Suraj Kandpal wrote:
> > TRANS_DDI_FUNC_CTL asks us to disable hdcp line rekeying when not in
> > hdcp 2.2 and we are not using an hdmi transcoder and it need to be
> > enabled when we are using an HDMI transcoder to enable HDCP 1.4.
> > We use intel_de_rmw cycles to update TRANS_DDI_FUNC_CTL register so
> we
> > cannot depend on the value being 0 by default everytime which calls
> > for seprate handling of HDCP 1.4 case.
> >
> > Bspec: 69964, 50493, 50054
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 28
> > +++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 8bca532d1176..54efba65ef5a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -31,6 +31,32 @@
> >  #define KEY_LOAD_TRIES	5
> >  #define HDCP2_LC_RETRY_CNT			3
> >
> > +static void
> > +intel_hdcp_enable_hdcp_line_rekeying(struct intel_encoder *encoder,
> > +				     struct intel_hdcp *hdcp)
> > +{
> > +	struct intel_display *display =3D to_intel_display(encoder);
> > +
> > +	/* Here we assume HDMI is in TMDS mode of operation */
> > +	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> > +		return;
> > +
> > +	if (DISPLAY_VER(display) >=3D 14) {
>=20
> As noted on the previous patch, this outer 'if' doesn't do anything since=
 none
> of the nested if's will match versions less than 14.
>=20
> > +		if (DISPLAY_VER(display) >=3D 30)
> > +			intel_de_rmw(display,
> > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > +
> XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 0);
> > +		else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0,
> STEP_FOREVER))
> > +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> > +				     HDCP_LINE_REKEY_DISABLE, 0);
> > +		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0,
> STEP_FOREVER) ||
> > +			 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0,
> STEP_FOREVER))
>=20
> For new code we should definitely be ordering if/else ladders in descendi=
ng
> order.  So the Xe2 clause here should come before the MTL clause.
>=20
> Although it might be cleaner to just have a single function that takes a
> boolean parameter to enable/disable rekeying?  E.g., something along the
> lines of:
>=20
>     static void
>     intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
>                                          struct intel_hdcp *hdcp,
>                                          bool enable)
>     {
>         struct intel_reg reky_reg;
>         u32 rekey_bit;
>=20
>         if (DISPLAY_VER(display) >=3D 30) {
>             rekey_reg =3D TRANS_DDI_FUNC_CTL;
>             rekey_bit =3D XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
>         } else if (DISPLAY_VERx100(display) >=3D 1401) {
>             rekey_reg =3D TRANS_DDI_FUNC_CTL;
>             rekey_bit =3D TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
>         } else if (DISPLAY_VERx100(display) =3D=3D 1400)
>             rekey_reg =3D MTL_CHICKEN_TRANS(hdcp->cpu_transcoder);
>             rekey_bit =3D HDCP_LINE_REKEY_DISABLE;
>         } else {
>             return;
>         }
>=20
>         intel_de_rmw(display, rekey_reg, rekey_bit,
>                      enable ? 0 : rekey_bit);
>      }
>=20
> And we can move the stepping-specific workaround implementation to the
> callsite to make it clear that the implementation of enabling/disabling i=
s
> separate from the decision whether to enable/disable (as impacted by the
> workaround).

Sure will separate this out as a different patch altogether as for the step=
ping specific implementation
In bspec 50054 it specifically state for which steppings MTL_CHICKEN_TRANS =
needs to have its bit set/unset

Regards,
Suraj Kandpal

>=20
>=20
> Matt
>=20
> > +			intel_de_rmw(display,
> > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > +				     TRANS_DDI_HDCP_LINE_REKEY_DISABLE,
> 0);
> > +	}
> > +}
> > +
> >  static void
> >  intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> >  				      struct intel_hdcp *hdcp)
> > @@ -1051,6 +1077,8 @@ static int intel_hdcp1_enable(struct
> intel_connector *connector)
> >  		return ret;
> >  	}
> >
> > +	intel_hdcp_enable_hdcp_line_rekeying(connector->encoder, hdcp);
> > +
> >  	/* Incase of authentication failures, HDCP spec expects reauth. */
> >  	for (i =3D 0; i < tries; i++) {
> >  		ret =3D intel_hdcp_auth(connector);
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
