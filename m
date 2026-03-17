Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELTjNJAEuWmEnAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 08:36:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDE62A4E94
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 08:36:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CA910E4D4;
	Tue, 17 Mar 2026 07:36:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/QuP0+m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64C8210E4B7;
 Tue, 17 Mar 2026 07:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773733004; x=1805269004;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M7aR/jtrPMORM+46WrnZJ96m7xwUUJHredulxFjhBcA=;
 b=G/QuP0+mIcY9fgpv8UZTV5IxxWwbOm63biIOvOwHpmuHBvgpMH1kDA+X
 6WXQ7TM3mW0va6iOJwGcuqbOQ13cT2xVidwMIcrbgvTWDPLztAJoAQsBu
 caXCSFOJfl9PdPWHCd/kICvdXZ7myv8338I8BJErEvEbLET0WG9YpPB6U
 /mUYXb0qQT32kk90xsSC6KeCtGeekr7vxHopEXdyDyCrRgKoLt3V931mf
 kzlaCyhjE2ilNGxtAfbIPUB2JjBsPXo38OmRi2G3Cb2MoLKWSIF1vYuPJ
 44pkecqFsDCmCFVox1laxkronBu5OYujNUIHkZKIfqHmXhTWnZ2rZTBsV g==;
X-CSE-ConnectionGUID: WbsA+lr2R16UCXvEMehCZQ==
X-CSE-MsgGUID: je9G9mm8SKGGQ94kfyGWBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74835668"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74835668"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 00:36:44 -0700
X-CSE-ConnectionGUID: KlwigOAwR3SvOsqnIbfqLw==
X-CSE-MsgGUID: Gbpl3qCRQ1eUZCDXMCVrdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="246906683"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 00:36:45 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 00:36:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 17 Mar 2026 00:36:44 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 00:36:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QBkHfbT/d/7AXqT/HInbsqWL22pJiixirnmaDat4k88dCcLiTUoP8xs27GjgfailTEYCG9FAs2gLZ/XXAwbaDPtblUbdOcI2uIc+01K8xoF7KiknuJI1vhYO9CT8Fz+xYNpMWG6S1h28Yl+u8rAHOaenxV/vyMPQKn27nxpiL1gyh2sLye0lv2eKlLFRhbyZRGJhMd++2dDKjs0y+H8IAGGfiZKdJMscFvwGdPRByWxIkRhHFGAS25I/Uuq5XNehUIqPZaDg9xsa3dFwsLYyuPM727s4KeOXqvJiuGmPL7NyIw5z4faMRlHSsNeJAXZuKs87ut8vBZ7u3/uDuWvj1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3lGlvj/MmfUNYXrpAS/TYVBZmotaP2xAZS3596WtAXA=;
 b=lSz/NSkQ9V/F3bdYeKvzCKp7muo3KbRpdESdAUEyZt8n44Rm/EXI+GZGoA5KjMxnRJKf1MWkZaM1326ra+49yXKqaUdNYgqydzSyCISz4VbWoPx4QhW27gd892RkWT7vohuV11I1zSsPhWGNW0ZriDtlii0DYQbnrpG6mZdtFFih72joqetPp+cID7XovNKyG6zlVt1jQDKitY6ZbZXSnjK5FrJIOXsLZbKH9SknUHFV871tYavyqYZH/MFTxRWo7IerJ0eFQFotBMCuKtAkl2nTjq4nHmq0LUKWwEDLRbxR3Dezn/qhBZYepWDys7CCYOpYCuuH9Q6wPbg67C1eBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB5792.namprd11.prod.outlook.com
 (2603:10b6:a03:425::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Tue, 17 Mar
 2026 07:36:36 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9723.008; Tue, 17 Mar 2026
 07:36:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Topic: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Index: AQHctdhQkqQV5dTTYEuh8K3om62g+bWyVZ+g
Date: Tue, 17 Mar 2026 07:36:36 +0000
Message-ID: <DM3PPF208195D8D35471EE2EBE5EA7E3E92E341A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260317063713.3288576-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260317063713.3288576-3-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260317063713.3288576-3-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB5792:EE_
x-ms-office365-filtering-correlation-id: 3037761e-741a-49a6-47da-08de83f7eb9f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: NeL/5RAnGNYnBSE3PmgAu5kCF4jpglJA5GeMPrPo2dGux4iP4rfyFTF6FttFohc9OuIS/v0lQq2hsg/FE1Ii0BuG4a1j22yNMc4DTkBiBDoZGLveke2uCtIabgYpzqj1v4fn3hII2xtG2/Ucd54hmmEGI9/cf2YCkMCwpSSSaocmcThtBld46dDtdf7j47sNStYJ1fjAkRadSeSC58t9kzSlYgShzbmwnTldaYE9Q8FK2sgHysnabPfB1K/m6v0fj3Ji3Z0WptSQfmHwnfFIHkfdXipoKblEr+o7zzra/y9mMAngA0MpuWJefOcNjEnEtfJMOh9mknCCZOESFkyY5HTEnLoPoIPY/y4LHhfU6Bm1FdlZlnC1au3WpgP8CCMW4X0M6MZu89xRQ5PIeivE5K7KeIxo/Gfnibg53ArVza3kQ31W4YA6kXWUkVU5tCKsxJyKrAPmA2DQwDUd4CdCGBw/Dz/+EYtEcNm9hwZLPdp8tFJnrR/FZgn6q1AQl4ARuBRZdO/EDlhxAnDVis3RMUuH5OOra2NyHIWQViTQIm6fXzyo9VJ29cQiAY1Xi1a2wk0iiXax3jaKtT6uc/eTMPEjeerNCZxUjD+ljOKABch6o8M4xzETuBIhEZy9LC2QxTxoe6tcmmYnB/exmotEflmi1JcnUxjUUJybT+Y5aSxFCjOE2Y9I/qj2+YTEHwdlr2kWCtnswOt4a7gIJFbmjf5wrQtl4yTndN5Knz2di4Ptp7dscNkUe1uJxxmBft4WCxnfZlr7xTb7KkVtBfwTD5QVlogN7HsIh6XWz1c/gJE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lS4M8dDgpSJMn/ykc180OvQtzohrPlhGMdd6uvwC0EI5NQ+oDe6hBbea3+wx?=
 =?us-ascii?Q?y9E6s20Fn6GdS3LUgmYqjYQdzQkQmrBuf27CzkBGLfHd0dvdZCe4G5lO03aN?=
 =?us-ascii?Q?g0vZsUrcJ/fJlagpwfUkbHh6SFDNKgPeHS9CMGGdTatExZ6DQYZEazeyk6Cx?=
 =?us-ascii?Q?IN/kNEfaDk8a7UJQ4Q7mtBPzvTcukJGhC+0KmtJmnj1wO6SJ5MI0rhTVfa25?=
 =?us-ascii?Q?lvnKtv3FazoJkJ1RqXczneZjwm/WIxdbmyPcEv9tL1tnyu46YqndEf/7DUoJ?=
 =?us-ascii?Q?EJhGh6o9xt2/jBsVAUsp/Bh7YLkTEeDqDrD2r79FX5E1r6yalecrJg7S/BCc?=
 =?us-ascii?Q?4kiC5IdKc3dvi8PAq4LmFBTTckp8bEx3AHaCYMBSYwqokebwJTPafcSovg3G?=
 =?us-ascii?Q?hWkgXTbXlaW/Tmhi1XAHxyruBoQ+Eol6Sx0Lc3qajA8jE/OAEHrnoc4tViwb?=
 =?us-ascii?Q?Z2ymkd+WLb70R2AoLeKR/RGS/EEfLktxoHGXAoQq1cfjFa/kp7jNc17RjWJy?=
 =?us-ascii?Q?lB6KFaQUtErw5JjJXlMMehAzPYB3mpUZwzLMy6rjGn3d94OFIoeTcwed/7DY?=
 =?us-ascii?Q?h9O+HQPb9J+ugs3otoobnYqf1eKy4vg4VpG/E9gkCKhGNx+y28hMVwfEdZ8y?=
 =?us-ascii?Q?1fkqMCGFO88i+FQPn0Jg5rm5ivLVjxUWfCbGSkJ5XyNZdKLsPIAOSbNY3UXS?=
 =?us-ascii?Q?CSsjDa0aYQpWEwCND65YdQoc2Zwc9L5gfLNVFR00SKjhUGYL7Q4OiXkcFqnK?=
 =?us-ascii?Q?SDA6jZO/SQoNWDrNEHuVX5xipAIpa30Mc+LJcUarZNa0gJ9MDkdRGXugj8qW?=
 =?us-ascii?Q?KqEM9dmD1tqyXN9phZxDkC0E3sV3higF4a/QTHokBenIQ6nwfwALn1JPh1kI?=
 =?us-ascii?Q?kPwq62+i7Ns8BzykxPsGorjpnEoqTYWTGunTMOLChE5cUSrPNNvGK/QgttU4?=
 =?us-ascii?Q?4gEtoseKS9YM3IPpwt1/5a+HgCgBW7j/TkercoaFvW1fxRDn5Y4cN7t0LnaO?=
 =?us-ascii?Q?hdGUYtgqHpWqKX9imzJWwRWXfSrltaWueYMouqHrwY8N9UB9oNljonsz8wyT?=
 =?us-ascii?Q?VcWrbtXeDGjy+/oZ2TeSkgWzuN3YiSHuCRO1u9vRNYfsfB3KnyI6cAQy2GO9?=
 =?us-ascii?Q?g+zv/RR7k7EIRaLwgSi5+DRHOO+3A3oxmz6JT47LhgvyHVbQFp/gRG6Qm7Gu?=
 =?us-ascii?Q?IL80Hd9aOPh0XfhIBkA0raM8d5V3/pmkvDt23Lmkg0JHRvk/jd2dg0k7uDNi?=
 =?us-ascii?Q?nPPotmIGzFbF4KPkuDystSxU0Zm9dvhO4Qoo4mvb8sX1w6LoS8FLwf/UXfHc?=
 =?us-ascii?Q?Ke/4GfuOIEepJ0iGCPiwRlCiCU0DSbkeCcy9eHcMClYarqfBVPoJ9tCCztDW?=
 =?us-ascii?Q?gP4JI9bY8XiQn+yDxICX0UfDTZnLUEbYUrAU3ddMbBVHx6OI98Xii7FXkSUi?=
 =?us-ascii?Q?w7JMtSDRf5gdwMxnrZtn+W61F2porgWAZp/zz/ulXyAEYbVy3RKDMhfdHkHA?=
 =?us-ascii?Q?uagKG+aUR9JAxJZf8nzZMolgdupbRU3f/XaeXWGnIyXRPL7imRBvJ4KpbYqC?=
 =?us-ascii?Q?9akJVxYDt48WEhJFn4k427dP/EpfNTUhv5O+nN6TicMINk3K5O8Y4pA8iPH9?=
 =?us-ascii?Q?Wrm/AC/nUXVbfGO2l24ln7+GAItZROnpXEDvDSBWtm3B7DTtx6fmUC3Pyr7o?=
 =?us-ascii?Q?tkUTsw00HVsmJ/bpYyk9E+drcsKVVjIhEomt5l3bnKg9nTuU2AkzkuMpa44H?=
 =?us-ascii?Q?3fTqQvTSZA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hQb1XD8LJ48M5Wsn4+5b4GWVktfmEyzcHC6bjUpoIWzqSVBforI7ND3AvJLGP2tKhwwlQwwNgxXJCrXiwAk3IpxH3lxcwXYjHm1/0NQVhoFVSIya5+Mht+FVMFtJY8Ocy6R3QKpmZLooV+tnSqncZzHHSOvg9PyNCpBoPeFbmLn0GBCbVPokQLzZze2+ACnOE7O0cmwq6LWwBI5uJ/Zx41Y5tQdkICp5t54XHU1HizRVQxnN57bqp7h6dYjAHKWzRDdenjNF61orQtVQhGdq7q1vHyEZJ121tbvAE/+OGqQ4FQr4xXNKxAGxt7nby5brK/zQXZL5tpcuhhGcDhwoYQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3037761e-741a-49a6-47da-08de83f7eb9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2026 07:36:36.5995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6A2ot5Z9bKoUGXXLROUSw/Qjnhggen86/XYDeXxaCdUCmTJ4iRiyQi8R9BLqdmiIPNaUx1hX2Xq5kKfJcLVSmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5792
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3FDE62A4E94
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


> Subject: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
>=20
> Enable PIPEDMC_ERROR interrupt bit for display version 35+.
>=20
> Changes in v2:
> - Move PIPEDMC_ERROR interrupt enable to a separate patch (Ville Syrjala)
> Changes in v3:
> - Add Bspec reference (Suraj Kandpal)
> Changes in v4:
> - Add TODO to check the enablement of PIPEDMC_ERROR for PTL (Suraj
> Kandpal)
>=20
> Bspec: 70296
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 38b284a0db82..6c803b2dcbcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -510,7 +510,13 @@ static void pipedmc_clock_gating_wa(struct
> intel_display *display, bool enable)  static u32 pipedmc_interrupt_mask(s=
truct
> intel_display *display)  {

The TODO comment needs to be moved here
Otherwise,
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>  	if (DISPLAY_VER(display) >=3D 35)
> -		return PIPEDMC_FLIPQ_PROG_DONE;
> +		return PIPEDMC_FLIPQ_PROG_DONE |
> +			PIPEDMC_ERROR;
> +
> +	/*
> +	 * TODO: Check if PIPEDMC_ERROR bit enabling causes errors
> +	 * on PTL, enable it if validation passes
> +	 */
>=20
>  	/*
>  	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
> --
> 2.43.0

