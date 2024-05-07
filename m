Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC008BDB3F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 08:19:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC5DA10ED3C;
	Tue,  7 May 2024 06:19:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CTeLBZjT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF96E10ED3C
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 06:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715062789; x=1746598789;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o6R47GwX5t931nk3XEqKSsiloDiosDciK+auzG3HpWw=;
 b=CTeLBZjT89Ohu01WGUoyByC3SImBLu7n8+HvvkCZxHoh7qgfbhTGQ6GC
 zQFFzkeNhoGzwjyBf80m5ei7K72h2U+eOG4FtC9CP29U7pG4mpzh4sBvX
 2Z5HnQgKPW/3+aaIQ0eQw4JfJIeWrW+2PEBZZS7cNgh2h1b15oqY6m1ob
 gsiXR0Do7TbGH9S4CnG8o9OzfYIRd7Gi6mEXBk1jt0B3haBooJFZVw1/w
 EuuR1tWkcUmlyTKpv0sjyV/0/ts/fmhdlwCG7blqBSkQ6AiUXxARKVAtZ
 8U65i1dKPvbgNGW4sety5KVpoF+ditpR97Mnz+y1B1c7itXRj1w6L2LhI A==;
X-CSE-ConnectionGUID: DStvHcWkRc6L7DTK+9Lx4Q==
X-CSE-MsgGUID: miTe41LdS0eUKcmDyteMJQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="13789055"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="13789055"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 23:19:12 -0700
X-CSE-ConnectionGUID: aeWQuzqJR1mI+EUOIfn6dQ==
X-CSE-MsgGUID: drHmPVLNQGusGjF1ey7eJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="59260588"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 23:19:11 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 23:19:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 23:19:11 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 23:19:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kRo7QYTFkjaeHsivDyz3ujKjA28sa6IOuMgkNka0/qp5+Q/Ujg18VmOuh42MRruVbfpSWmkoPBv6jDBqzKOQcRDnAxO9g/075Jagf0SGbUzop3JYF2Et6RzPLH8DzKGYtpkpNFdFSbDkTELoHqVbKJuxWLxMrDCJNpB2oFjB0+R6KeiXy19teNfHUsNh/bqpGOjEgfPd9tqRSod6BSceuBDVt03RsBvBzP23U8n+96tpNWFgJJ7KG42/xqqgD/KBGcJ52arSHjSflKyHOcp2BH6zeOTY1S92QQ2BEUHFm9sgJavviwND1gGJOQAcMTJPLlaA2Ow3Xuary1KG8hdIvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a3K22HTO2agYfY2VErRIkSuTjqeVB3/Ui5YujwYKfps=;
 b=MEUK5vAkZ0Xecjz9y3pYHm+X91KTeu/95qC3EJ5CLn8bmBF8UqN+RZlyEI3bp7UpSbKHBGBeejQgdrzfW4lJ0OvkolfmlfnDi7OvZOve0jI5cp2yBS5slE9DceT4mq1+0jup49knloulQR9xSmO+RrqGhqOMOZiZtK2M2dbKK7TZwHP+Nvg9MTD4/yzJb1BDDsJsfCCLq/xqQcqG/LMZYJ1ZaifkdlydIZhPzMmhr3f7IvnVzZzx4ZCygF4IC1tFUlYSKwIbxUnRGVl9iOcUxH3l5QZhO3jBEr0pGC0qZ0F89/h0e+iO2ZL0ilApv+PFB6ZPkROp+fxT17mDXS2Blw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SN7PR11MB6897.namprd11.prod.outlook.com (2603:10b6:806:2a5::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Tue, 7 May
 2024 06:19:08 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 06:19:08 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, 
 "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Topic: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Index: AQHaj7CQP4xGzBk170W3teiyd0wODLFqi2AAgAGwCoCACrECgIAMig0AgAf2E4A=
Date: Tue, 7 May 2024 06:19:08 +0000
Message-ID: <PH7PR11MB5981FC66A9934D33A6F83AA7F9E42@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240424051144.822652-2-suraj.kandpal@intel.com>
 <20240502044057.896348-2-suraj.kandpal@intel.com>
In-Reply-To: <20240502044057.896348-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SN7PR11MB6897:EE_
x-ms-office365-filtering-correlation-id: 7b460d48-896a-4a6a-f800-08dc6e5d9a8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?c1OfZl3pIBL+TgDnCGUILiiXvIZN24bAlYJnilIEYuaXuApSEV09ZpmyU+Kz?=
 =?us-ascii?Q?IHIvmI+oyTKUmAE9DzKvFmOy2exXcV+ephFUwfJxnUsKZL4OrTURsF0sS2NS?=
 =?us-ascii?Q?tmsVbTFJQe83Jov+E57yZU1qyVcM4W+z/PWFrZyoWYrM/4IMbAxBt0N1Zx90?=
 =?us-ascii?Q?msrYrexvisFbqzQ/OiPfpCFh/itf4MdM5z2gZ68rGz8lzlYBNxsbq7Wvhfwj?=
 =?us-ascii?Q?foGzhbqYSuEJohElJUNXtToDTnLq6jRmNx4CNd/eOHxLHbicwoFlDe3xgtTD?=
 =?us-ascii?Q?Ssjgz3542KvSTBhvuC3Kh2sMA9U9Wu7QOnDvFtKUVSEXTgeqdqirIu4UJB2J?=
 =?us-ascii?Q?0I9BmGjjP6S8qgqvnmrtFwoUjcKZ7rfkemg+GRe7J4cGTr43CrWmi2djDVZW?=
 =?us-ascii?Q?hhm/XvSvi1PQG7SL0AK6uHK4z2uuPi57fh8G/2dm8qFyDiDilfunQUbLBJ8T?=
 =?us-ascii?Q?awtDFxwgKhc+W+WFqpNChLOHagyiOnz48nxES8SwZbL4SpdMZ59FOK8WRe0u?=
 =?us-ascii?Q?R54qGhF7LyhK5092iXhX0ifqQH1HW7gANqBT8PwVW5sSn84UK4yTz/IjWl+P?=
 =?us-ascii?Q?HU975TYqdp283HoLMF6K+n2rSgqehYa3LO71Ry4SLo9U3b7uiJThi0mtMzSf?=
 =?us-ascii?Q?RLNuzt1wSR9YrT0EdNo0oySiGnnf2Ty9YGayQun3pNkemGFxMykWg9XnjHLs?=
 =?us-ascii?Q?hQQpuNBFICUi0LjmNMtyDQAkDNOAnNeDcuCiXSRb9SpkIO9le3Phf/2l+dih?=
 =?us-ascii?Q?8lIaNc3sh4rvu7IQz6G7gwWJtwIAB2iEZnvb7dGAetcSFFQXOa/7dB1uQsaE?=
 =?us-ascii?Q?XDqjZXHoqxBN7vz//KYK3T/MhnvOjQoE+P00o0hc7y9x/cvsl6lCnz05jCjg?=
 =?us-ascii?Q?9s1GVmYbvXqJAx9+UB8zC/5+5pVsJ+wbJmzmRjsnxiT5eyWNZh5RR1/GN13m?=
 =?us-ascii?Q?8Mg4+uoH/QskgRNhSDza9VdbBv9reHDpvwg+DfLuxKwS77aKHLPONk8Zef9b?=
 =?us-ascii?Q?GONekAiZn3rGCfTd/eOx84yLeoM8IzQD2RC5NfMUbQXhW3iSbzvatMhzknAL?=
 =?us-ascii?Q?vRVxRgUo68hk4ASKsIF34V9ILMNmZQoxucu9joYEZ0ZZEPVQ4jrYCzMWi1XZ?=
 =?us-ascii?Q?aHRPfa7pNvV2CyEKwpG2Lm1M1IMWdKtDa/NOtFay7nWGzimsViXr2UL0uq8r?=
 =?us-ascii?Q?htaNZRAoBTym8KSewO+/SexevKgTLSwtMbxaAwBBS0xNC8lC4XwtHdUbFXsz?=
 =?us-ascii?Q?OgsJg95mHQeG33RdVuN8N+kJP4fdF0IVmKzkHPv++Pn9WYOjz2Mt9zv0gfRT?=
 =?us-ascii?Q?4BNGI5PtS1FOqS5ufUFJbnHUMup2+sLBwj+rKVKGTGHETA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YNA4INWPocU5QOvqdf2ycPZ0d877aja7Ce9YAJvZO/7K1CzBzmWPnFmia14h?=
 =?us-ascii?Q?nB7NRofrMnXbR92nyVndugi8UP8/iGH7yaSS6UtYNSelDimg4gyRB2iLq9Nr?=
 =?us-ascii?Q?2LNab9CKElK4w/rBD0hpt3B/fjatTjt2ZjnxzPLmsc0K1ICwQOOLho2a6hLn?=
 =?us-ascii?Q?Et0khR0Bun+gFIYXkApp5tUR7zcREj7Mw2rHr9/AX+SlPYGG55Dfjc9MsQUA?=
 =?us-ascii?Q?RlAt171TGcHWbAcKs2DK0seWkWutE7+AYNVdQZflOZj6c+5gfonAQwn2QJdO?=
 =?us-ascii?Q?O8nu08WntIlboHw/dd5b1psHweaJA4qvsftbKK6MgA4uK1iGkE6cGlFmpv1t?=
 =?us-ascii?Q?Zy/Y4MIvAs50oM7dfuFdVNek90ubIJzlpRglJQdApPU68HlHGGbPA8zSFjfF?=
 =?us-ascii?Q?o3PesI89DymGACCAbx9fx1DpT+hZOrKk253aGlIHc/55/USTOOmHc66X9ngs?=
 =?us-ascii?Q?ExcwPrHvdN+F1sXjzEpXgB8V59/TPU9VU0s+tbR86B2sJsVdmJ9G4/qV7Uri?=
 =?us-ascii?Q?4+M6UZ3gzf+HV8sNLiXs/37WFS9AC5N3R1w1XzzLCq2/ILW7Bkc1MzgnuOsn?=
 =?us-ascii?Q?hiFjLXkV8hRB98VvUWfmvr2kktOyqwUqRsplOgIGaVyyubke/+wTkdimuzsN?=
 =?us-ascii?Q?BPKVaItaBRqRqLtlLFdOpSTJLjy4gup5kIrcnNi38JB2bR10OqNtelHVmTM0?=
 =?us-ascii?Q?Fji8Zr2VFzZbagw9yyBv/DEudyoODZGASH5wWoMHVmDr3405mnrH1jlrvu/1?=
 =?us-ascii?Q?NEa+ttHTz1T1xsETtJrKCbbU04Gk9xgj6O3QtQ4AypTHmI22aWd4ho1Cdw32?=
 =?us-ascii?Q?8qajtQ5eT8ZwFy3KWk7HHxXqVUaSDi/303MOf2CbvdMDWmiDEt/oZhqRwvSq?=
 =?us-ascii?Q?qHIZYYJ3fqhANLKx0LvNYoml7zo94QdvAkGqWejHfF050k8gCzV6c689nq7T?=
 =?us-ascii?Q?xgQ3Y5FO5Vmr2OJK/YDzs+XNZ3SM8Kp5dcVdqWpnxRIi3Mg64UyGyWvER+b2?=
 =?us-ascii?Q?ahRqeyrw/30bf4DYCtqAovJeLjBqKWjyRxXIlle50YMB8L6Us6gIdTglBYTH?=
 =?us-ascii?Q?0Ah2WYE6KqRTtg1n83YZpw2MeII1lw4De9Fc06viBiyCAzjoYmDWtyuIz7DD?=
 =?us-ascii?Q?Ek+GUrOzKIp8A/TctlRXdlDD6KevBTVvi981rL8yWSLcGXbo54VyO4JlKqVy?=
 =?us-ascii?Q?3aaw4eWWhhxMoVTjezLlJ5V3Q9M2M1yv14Ltia2dzJ6iydKISnwo8JI92092?=
 =?us-ascii?Q?yHPGqxhZf8hYJEHAcc61eZODKvwtQ6r7NmBMsk0Zr66DywkD7c1RRUG51R3X?=
 =?us-ascii?Q?sz8rSoojLbxhed3SJcdXw30TvNB7EqO0CLmeazjK16IZKUUmHR0w9DWXigDo?=
 =?us-ascii?Q?RRo8nQ+Mgd00KTYXQKWa9KMqTipu/eTLkblSDkdM0yze6RXDS58bLoI1dtyj?=
 =?us-ascii?Q?Tlyv3bgEgUJX9vsozo4XG93+L+rY0aXkCsl9ydGPhCeI2ezN1Ftl41B2CjBY?=
 =?us-ascii?Q?lKFNbtYyFMr7pQU4bfvTnhk9gk9go+agK93DIBgLRrgskjbH6XaMbeUmXazp?=
 =?us-ascii?Q?ZE7HGXHZ7UVEuaRdqLP0DY2xsqhYATAbjOh2pOrl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b460d48-896a-4a6a-f800-08dc6e5d9a8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2024 06:19:08.3371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uiXn0aNa5TescrlgnEPK4h3cVtmalO0/tc55hRbUUWxJEdUz/55Eo/6zBQpQh8urARHD2aEh7MkPmUi5AE84Ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6897
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Thursday, May 2, 2024 10:11 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
> HDMI
>=20
> Disable HDCP Line Rekeying when HDCP ver > 1.4 and when we are on HDMI
> TMDS operation for DISPLAY_VER >=3D 14.
>=20
> --v2
> -Wa to be mentioned in comments not in commit message [Jani] -Remove
> blankline [Jani]
>=20
> --v3
> -No need to write what is being done in comments when code is self
> explanatory [Jani]
>=20
> --v4
> -Add comment regarding need of this WA when in TMDS mode [Chaitanya] -
> Write in chicken register for MTL [CHaitanya]
>=20
> --v5
> -Fix comment [Chaitanya]
> -Use correct set and clear value in intel_de_rmw [Chaitanya]
>=20
> Bspec: 49273
> Bspec: 69964
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 23 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h           |  4 ++++
>  2 files changed, 27 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index d5ed4c7dfbc0..02cbbbfd8e25 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,6 +30,27 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>=20
> +/* WA: 16022217614 */
> +static void
> +intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> +				      struct intel_hdcp *hdcp)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	/* Here we assume HDMI is in TMDS mode of operation */
> +	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> +		return;
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> +		if (IS_METEORLAKE(dev_priv))
> +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> +				     0, HDCP_LINE_REKEY_DISABLE);
> +		else
> +			intel_de_rmw(dev_priv,
> TRANS_DDI_FUNC_CTL(hdcp->cpu_transcoder),
> +				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +	}
> +}
> +
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>  			      struct intel_connector *connector)  { @@ -2005,6
> +2026,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *stat=
e,
>  		    connector->base.base.id, connector->base.name,
>  		    hdcp->content_type);
>=20
> +	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> +
>  	ret =3D hdcp2_authenticate_and_encrypt(state, connector);
>  	if (ret) {
>  		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed.
> (%d)\n", diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index e22a82a5ddd7..31338d825e34
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3501,6 +3501,8 @@
>  					    [TRANSCODER_D] =3D
> _CHICKEN_TRANS_D))
>  #define _MTL_CHICKEN_TRANS_A	0x604e0
>  #define _MTL_CHICKEN_TRANS_B	0x614e0
> +#define _MTL_CHICKEN_TRANS_C	0x624e0
> +#define _MTL_CHICKEN_TRANS_D	0x634e0

No need of macro for transcoder c and d, as per transcoder it will be calcu=
lated by _MMIO_TRANS((trans).

Regards,
Animesh

>  #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
>  						    _MTL_CHICKEN_TRANS_A,
> \
>  						    _MTL_CHICKEN_TRANS_B)
> @@ -3519,6 +3521,7 @@
>  #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
>  #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
>  #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
> +#define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
>=20
>  #define DISP_ARB_CTL	_MMIO(0x45000)
>  #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> @@ -4520,6 +4523,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
>  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11,
> 10)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
> trans)
> --
> 2.43.2

