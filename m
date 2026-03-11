Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBqRMe0DsWmFpwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 06:55:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F6325C9B2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 06:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90DE010E144;
	Wed, 11 Mar 2026 05:55:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gK29dFzB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44B110E144;
 Wed, 11 Mar 2026 05:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773208555; x=1804744555;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rf7bLnMgDWewEflLfAQNKr19SddCfeUtYr5GxafIbpQ=;
 b=gK29dFzBVLsRtodOZZa188XqFgnIe3orSl+sAnrSJ4DRotMFlmo1ooFn
 6jS+iHRbOyJVwk+21fgMBoB9pVK5gqjgGbGgoIE7MNFgEyY1pOewLASlT
 w7LrV46nXN4n4q+EDcTAfLHjJZx9InzzBdiomvN5l147gjMV5d6IM1HI6
 NUZjJoPhBXwfxfdnDkK9LzZcObdiQnCbems+cYKFM7vQ2YjQV/RVk41YG
 +hdNHb6Kxmg886GEtPWl0XiFFlZEyHbmouPVJybrjjpc5AEVE0euz0j9t
 IYRBXDMFzxKUfxdSvOIIOh0r9vfb5FWDtheicisLSYtZBql7bLymDGP8+ g==;
X-CSE-ConnectionGUID: Aj2v0tOqS8iKkGczpkxqEQ==
X-CSE-MsgGUID: 5HR1BgXvRBKdPUvH17vLZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="78154648"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="78154648"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 22:55:54 -0700
X-CSE-ConnectionGUID: 1qDk0llgRgOnmqkw1ASc1w==
X-CSE-MsgGUID: R4Tm92XrRcCXRrpslbVDxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="218252449"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 22:55:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 22:55:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 22:55:53 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 22:55:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ejgT7IGJOaxM0aeDBfcqxFRNj1SlNKlB2pIg6AUuY/lKEz2pY3AspDxFCNMSOzV0Tk2/0e3gGcSsq5bNHzTYgXeTULpfeCvTzUbQy4VWUDvnEctU2jwNGNuYqmXc19rPJv9mF5wGdkWd+FFzebOtuBUprFzZOzg5h/mJLzGcCiaBu0KILeM/YwWPvC/4M1RfmCzkIiCtIdvf0H05dm1k54NdCKaGbZijfDTmO/aVjIUqPnjVUMz6dYdaVTBdwboeBb7bF7s3YCqTvb1HKgQd3D0WmM+Bh+qvVY8Gu+5cd891WXRO5JzpcP5346Ubyb4Lxcb35GsT9xp7d/t4Os0J3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4c2VoZooT2F/2ywkw3v0JYD1UgTM4zJPY5Dqh2qQfws=;
 b=LvzJYAKyH5AA+dVsgU4BB+MzrHBqEtrW/zjsd6UXAhk1cs/A8HrB5cDX4+M6mtoLTRVHAgaa29YDJYI0kyDONbyOaCtkmbimFzRyWd6SX1XSjgq+dZLL8JXZvZQVzBcbOSpAhawJGLUOmcAiQSDbkFBfQS2OfH0DVnTzToMIuyIOeYzi9kJJfRGU4+3QiKPfjjBdFQcf7SV8jtw/Ow+nWSJjrN6Qt30/HtzOkCYcgszQ0KZgZUC3A/qSUAGyhMdWax4bUvzxM1pOVhbuopTmPIPTbZIKPyUcC9y3b9WnReka0bsa1IMNZRD/vVD9nqB/WhR2tp2ZcyWCsu63HFRnoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4896.namprd11.prod.outlook.com
 (2603:10b6:a03:2dd::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 05:55:51 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Wed, 11 Mar 2026
 05:55:51 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 21/24] drm/i915/lt_phy: Get encoder configuration for
 xe3plpd platform
Thread-Topic: [PATCH v2 21/24] drm/i915/lt_phy: Get encoder configuration for
 xe3plpd platform
Thread-Index: AQHcq9pjwR6fpyLOmUGezdbnJzSryLWo31Aw
Date: Wed, 11 Mar 2026 05:55:51 +0000
Message-ID: <DM3PPF208195D8DE7744AC27663350E039CE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-22-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-22-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4896:EE_
x-ms-office365-filtering-correlation-id: f20324e9-ec3c-4ba3-c6af-08de7f32d9cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 8FuXcAJhmyKuXztDqoCkjHO2DO4TqBR8hAG75oCOZMZnIZ54CuozgFoJfMiyvhiDTtFGLZU3A93IJfThX4xpdW+3G3yyZry4DfCHQSJARljnDdMqlnurtcLWyT2eyzokz8TM+TqRjKBZows5fKKGULhEauiB2MgImX8AS2ddGuijjzqZe5vky1zTEby3HGLgzVdMMFd4O53hZielz//0xmgpnuGzC814Nw9sTTvhv0ABdeNv0rkotESyRFoqKlrmPNDa/XuPNLO5cO4+AhOEt4RyIWjcCkDpCWbeGDaGDgHX0lfUg4xGdbtSTaLA8cWJTcbSrIK8l5ZjKb8ybxpLnBoRiEDlp/QcOokreIcsKMK35H3Ff1ObQe64cjeHCv0Q3Hlc9VhoCItNLzdJMI5RPCYW1WfsxoeDYFG5fp2E6sKKphkllvjegBxdDBUSjOVzlvTw1ajV4HNOVrFoCRV7TAIfg3T8HqST596w1uZPYm9xtqZ1MnVITjWJ2BV2XyZXsAKclVrZBvMGbfuesomVmbu4pJueENgNKC2WlagHiLtJLEjq+YFvHVibDpsY5/6lG9gmH34CvZRVmCxenFCRr63QutxtFX0JzWjktLd9MCe9UJgmibKGMN45oliXrbueqCwxcnas8SmSHLi19lvypOKNYexTwmA62iL1i3RuOMtaGvP1UWPVtS9Zpmxftpp1SBziqm3EQMlctmkh/o5QbHfu4GmjCFpps9jMsypS+b7foGNMYpVg8JX6sdNew+t5OmXm7vxUz1/vJxHNWpROJCttZo+in/+AqG7dcGEa6b8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JeB4mbhdZKn2XKwc7Ab3AuPoydGE7PLflTvR4MOVMysxV0syOzCbmtNqgvs1?=
 =?us-ascii?Q?Mw5W0WzRL1rA9/OmbHYxD4BG23vr7e7QwE8XqPbHiZE+aLOaq0aNZo53Zg/L?=
 =?us-ascii?Q?Tk5NQ2r5XIFHjxZQ2wbk//9Z+C3wgEriAHT22e6AP0IBxujB9Zclt2nRnYg7?=
 =?us-ascii?Q?BBqraF/5mvLe0t36R0pIFCL0HmNnVUohr8fl8pPOagsNIigweSUanUY2h2eW?=
 =?us-ascii?Q?T+BnWD2shfH+4wfyMZOSNVqvFmVMcJc6Qhzou7kjq2vXrdpGY1YhkoNPkqjW?=
 =?us-ascii?Q?K/TS3/btuSk7ZVYPQ1Jdlf3hfQ6+uNoQkbMsp0a64OcfTdlvTX/rvtbF8RzO?=
 =?us-ascii?Q?KE+OiqBsEid22FvIR4hOcssBSl3jOZbQyF8J7OELyOagm5a/HMSmCV3TpglD?=
 =?us-ascii?Q?3Wq4tDQhQFcEWcKubb6bxbfvKih9O0ui/a8cH+levtjc+XCWg9oZmAjA2PVs?=
 =?us-ascii?Q?Q2h1M87pc4lFrejAADQ+KZTsg8ci6NssHdDGJu7ZhhBhEGJfQ8UDSqeeRslx?=
 =?us-ascii?Q?UtpgbV8rqontLFrGNGYkJgkBKNdgOjKW+5y61J35TbF4UMBuYyGMd5tlinKm?=
 =?us-ascii?Q?3yVzxffhWrEXT2XJTVx4AuiHT39BLZltAwxKhHwwSvguXZBsOzwgj3xW1Bp1?=
 =?us-ascii?Q?lk606QibINlnWvcTgwo6fC9M+1xfHXQvm1mBqXTzZVixY/WiaxntWVvIVj4P?=
 =?us-ascii?Q?DzwAGEOoMn/D011V+9ZodDirODDh04jtvd4mnKUcxFHN0tEGLxXW9+fkqecl?=
 =?us-ascii?Q?kwRI6h/qmVx81QcNuNWt/8J2sreJfYREycSRa9WNs9kFjF60Rz1T+2Y21ylc?=
 =?us-ascii?Q?rUqQ3+AZyGyKoFLLDDiK2WUUFJgq+23LrF+4V3iP9fcGyUODoxF6PMsBUgNe?=
 =?us-ascii?Q?3BkEiMfjxrlPjMR7HfUeNHlKxyQslMyRpLNGQncGBdskgLtC4mfknsilmXEd?=
 =?us-ascii?Q?7Ba4LGm+RUr0qKU7AXBIcQYdAIRthW0LoqEVQdIcEIINROZGifCB0nQx730e?=
 =?us-ascii?Q?v1w1lgyltsfA8QFBQUZEHixF4w82AB99El2ZEn45tx72/qFTJPKu8+WOcCFb?=
 =?us-ascii?Q?fMQjRUZMHNfHImD1rCxGGAB/M14ek9HP5C8ZNLu7A5le+A6OZLlNLoiKeKM/?=
 =?us-ascii?Q?9NK4s11HAtYJ0T5+A/0bFWH/0h9CWZ7uhhCdoLTNa0mf9a0C6wD7beR0qBMI?=
 =?us-ascii?Q?8rZxA6f+aOc9wsB4kMVo1vR5IM0MVWhcgZoh4LtPf8yy45YJGcl3jn5Xe4Ff?=
 =?us-ascii?Q?2p2BKFh5bL9KXkKUFu9geTi1mz0HmyeUw8YOnSWQNB2UG5Y/ogVW651nHAP8?=
 =?us-ascii?Q?QTesyr88LA1q3tw7hEeZkXFw0tXbhZkUAWLHs8QqedtSXQ8BU2i0ZVGAtGj/?=
 =?us-ascii?Q?x/eArqaXdZHC40J3n4dHzkxeXj+5h0kSmVBFd7LOhaYAQ8esG+fmPlPlYWPF?=
 =?us-ascii?Q?4fvh/GlMTJCUW/CjNoscT43o+j84a/jWfDYTKT6M8QsCiqVvx3n6Au2AlmEw?=
 =?us-ascii?Q?l76Lhb95Cgktc51mXP0y03DgNYvRtJdpNEWnmDmCowHU245G8s6JSFWF2aII?=
 =?us-ascii?Q?bmjfMHYkvC7fOuFbtyqSXNqFo0VzfKIgOvyo4OEUVwGpAUkfxwMpawlkrCCH?=
 =?us-ascii?Q?oY0IAxmwKDkcb4H5zVtcuNMGsU5IavZeL33t/rHqoznN3dBAAI5I8pkGKXW/?=
 =?us-ascii?Q?+Ljtshnegsy46I/K+9anZmtGdRo6fcatbXowOi0a3OUgLmOrmivnLhkkudh0?=
 =?us-ascii?Q?T8Mt8d0v6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QEA0YFhPnD4dhF0+YcZV7PbJjE1gDtsxweu6fXuxWrrdxuNrbgHx77URHI10r9MQKl45AX68ko6/LC+xlR5zq/rpUGJK0W03OQb1yQ9ZNEqeRrIfnwLkWamcvIn07/u+e70bICkqrxbKskeXtEl2hebSeOaeUUKvWA3zT7p4iyyceHmT3yQJdhmRRL4Xsg3s8bzHcAYR4mrLqLWZPQp/rCO54qr8d6Skqxg1ONqLrU0ZlYGgqPW+iknMzFf+ixqIw6nPe7ojqgTK5+OPAupnOdV1rE01PbbYib/l7en2EphkRUMx/FoAgZhs5NFuZ2vjPws+wwJaw2bOqNXDJvMOIw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f20324e9-ec3c-4ba3-c6af-08de7f32d9cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 05:55:51.1809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZQgTt0zcNOCRoXTksuzUmxJboujVgE1GEzZ4d3zT1Nb8QS6L2tnAwAncCM501yfDB6vG6oOlyRwPBVYQW6dumA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
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
X-Rspamd-Queue-Id: 34F6325C9B2
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 21/24] drm/i915/lt_phy: Get encoder configuration for
> xe3plpd platform
>=20
> For DDI initialization get encoder configuration by reusing
> MTL+ configuration.

Reframe commit message
" Reuse mtl_ddi_*_get_config functions now that all hooks are in place"

With that fixed LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 20 ++++----------------
>  1 file changed, 4 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 191ae7cf81fb..385d6b26693d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4243,21 +4243,6 @@ void intel_ddi_get_clock(struct intel_encoder
> *encoder,
>  						     &crtc_state-
> >dpll_hw_state);  }
>=20
> -static void xe3plpd_ddi_get_config(struct intel_encoder *encoder,
> -				   struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display =3D to_intel_display(encoder);
> -
> -	intel_lt_phy_pll_readout_hw_state(encoder, &crtc_state-
> >dpll_hw_state.ltpll);
> -
> -	if (crtc_state->dpll_hw_state.ltpll.tbt_mode)
> -		crtc_state->port_clock =3D
> intel_mtl_tbt_calc_port_clock(encoder);
> -	else
> -		crtc_state->port_clock =3D
> -			intel_lt_phy_calc_port_clock(display, &crtc_state-
> >dpll_hw_state.ltpll);
> -	intel_ddi_get_config(encoder, crtc_state);
> -}
> -
>  static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)  {
>  	return pll->info->id =3D=3D DPLL_ID_ICL_TBTPLL; @@ -5301,7 +5286,10
> @@ void intel_ddi_init(struct intel_display *display,
>  		encoder->enable_clock =3D intel_xe3plpd_pll_enable_clock;
>  		encoder->disable_clock =3D intel_xe3plpd_pll_disable_clock;
>  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
> -		encoder->get_config =3D xe3plpd_ddi_get_config;
> +		if (intel_encoder_is_tc(encoder))
> +			encoder->get_config =3D mtl_ddi_tc_phy_get_config;
> +		else
> +			encoder->get_config =3D
> mtl_ddi_non_tc_phy_get_config;
>  	} else if (DISPLAY_VER(display) >=3D 14) {
>  		encoder->enable_clock =3D intel_mtl_pll_enable_clock;
>  		encoder->disable_clock =3D intel_mtl_pll_disable_clock;
> --
> 2.43.0

