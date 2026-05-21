Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOeqESZzDmob+wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 04:51:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30D459E340
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 04:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2AC10E07C;
	Thu, 21 May 2026 02:51:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a+payKYo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 340C410E07C;
 Thu, 21 May 2026 02:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779331874; x=1810867874;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iwQ+hmUA4m4psTaipSVEuIaUhdvyIR8J60By4g/tolY=;
 b=a+payKYosrAEYrUXF8bURHScFk3gZ4dBy0WT35jsO5bkK815r/p6WkOc
 rcvjzO6Yn8K9rR5q3TIKUBQnGQSms2iec78Zha6mQ05vVUIT2xmnNzVKl
 LirHgFqOUpEzm94FRU+TixLZquWS2XOagK3ZmrmuCxxbCdAhKLVt85ALw
 mJ7FkDVgh9Te+8VCr2VWndLFyubaXs8a+N+lgz32UZrM9je3sRFIYoEb4
 xY8LFkWod/ACOuxNdLRSWq5gI3QM5Y3RowuRvIGYJ1vtni3DUyzyyIZR6
 aQtyb47jd4REThNLZHtPR1Cbx6VNJmfX0TNORp6P18IBbcvIZih3Q6BRC A==;
X-CSE-ConnectionGUID: iyAGxVrIRJivE0qFKcXd9g==
X-CSE-MsgGUID: +yATknwATcu+O+Fwrj13PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80098287"
X-IronPort-AV: E=Sophos;i="6.23,245,1770624000"; d="scan'208";a="80098287"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 19:51:14 -0700
X-CSE-ConnectionGUID: FQ2ffCojQ0u71ky65kw9qQ==
X-CSE-MsgGUID: KqVuXy2tSVailOjQjkFVzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,245,1770624000"; d="scan'208";a="244385329"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 19:51:13 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 19:51:12 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 20 May 2026 19:51:12 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.3) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 19:51:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fTaEsvufvktfYw8SxlQIbCmAzggiTSl6X/yZ/j44SLANaQkhzGgXvhPXjgMwFEFkV70T7z83VkwA66UvklFmYpPkbzaV1Q+/x+DvstxcIqE2B4KRA/tGeKuCl0vtq1wOSL6lAyVFFk+PGiept9japlVNAwwA4DAoJoirHDkY0dCejqm8qN99yx1PaNgNykMBrAJtOOUTF3EGfAWdd+OGnMofzxHGEJ3rLuFPVwYGvi0yO6aXoDdLOpzsMGW0ThkhvbFLZnxNXVOGSCuZ51kKjUiQ/kRMeL6f9pFmV/3isTHVp08ROdZADTkg+Sh2mvCEUIUEcd1oHC9QyR66fyVO7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w/JRhLFdUYNGYk3Oj0KneOH/FD1rla8FwJTkeDEZ0lk=;
 b=FRrct/OJZmozwSerzc2051TPncopzbAjFfR3V6xBvN9B6BZi2O2gbC/CC7bCe3dFWQAFUQzsVTwK/IzRG5+M2mMr3dCnzvy3b7OepMiPPouclw5ihAEzSTbhuk71rFGwP7mMYhlhX9aC71hDT2Gl1rH5y+t5ooR1o03Iw/UwpV043WgtZ2kCOqCS37nSx9jIlSMzCHt/TSCW6Su3ZaQhi4MYZEkm+0A6E7Kw6aNJAjrXqCbrKYKQfDKqX8T2IPK1h6h0X4muL7JwERncRfD7D+XjH/N2O1YGKcJqaBXC2UoWVHxNzDVcT7odDZnAJTlbxwEUhWwDFD5qtGq/MeaY6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA4PR11MB9442.namprd11.prod.outlook.com
 (2603:10b6:208:55f::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Thu, 21 May
 2026 02:51:09 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Thu, 21 May 2026
 02:51:09 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: John Harrison <John.Harrison@Igalia.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Rodrigo Siqueira <siqueira@igalia.com>
Subject: RE: [PATCH v3 00/26] Enable Pipe writeback
Thread-Topic: [PATCH v3 00/26] Enable Pipe writeback
Thread-Index: AQHcvEekZDRpUBxAzEagQXCDhYV1ObYX8HeAgAAwEqA=
Date: Thu, 21 May 2026 02:51:09 +0000
Message-ID: <DM3PPF208195D8DD46BC7EC275975CBBFF4E30E2@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260520235820.2313192-1-John.Harrison@Igalia.com>
In-Reply-To: <20260520235820.2313192-1-John.Harrison@Igalia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA4PR11MB9442:EE_
x-ms-office365-filtering-correlation-id: 4acc2331-7c54-4c93-c189-08deb6e3cffc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|11063799006|4143699003|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: smghBBlsWhW4X38DNPiRugZOpfrnGn9VkrfF7esGNhCEng/seJQp5B8JSpc59npu7NzxQVALklL+UwPDHwzolr7d0Yy12+3RWRUgyFLiq/30Gg7ynmj9ZY35OO4kNIRGHQclrBIFCRUBDWmpk3vYtDAgZ2BDYdcmN/BMftGY6DZ4lsNP8V8Jb7iidx21ujFVYRPc4cfRd/X7qzAufN4CKFYihByfRwl/Nj5OPXiUkmj+vGv40YFQCZ/80C5aKLWs9boHKsDWNaghxawPmNbFaI88fXXAPZSACjBitovvKJlS9umM/Fa3hZ41LqcTjcqUXHkAcPL/K4ghMUhSVyWr1jv1zYxiE4t/RcVVLwqTCLtlAxuM67jWOnFWlVBoSEz08ebRTgQxdWZhvV2/gLfShF+OPb6ni/kLNGuNm+tvTZJDNLppq1QOcXfgJoFE2kvg39xZyekqPeUz+4r7FpmhPBQ7OAKtjw8W4pQK9hrQl0ys1tyAZ1+7XTU8dDAF5xYoQKLIkNG8MThO5UrSv1mcADluxRtKCjv0o5iddBc2xSwfGW7KIz3f49nChvyTT8Jn0OWD1cLd8cXMJaLfRd9GnQtXOKxUEu7l//HB0l24EpNCdMOHyGEUiG9NCAfPupcd7nynk3BKZIy0tx+tOSOO1KOdfEsdGxvGCWyaF19ZidE66FFcEEjDARqALKR7s0Vjk5woPjvDpysQYH8IALWjjIOH8vFHQfR71c6MZoQWYeKG9UmqmCW6CRlk7dOV6RY8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(11063799006)(4143699003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jG4+rVI0gMfK1VAycbaJuJ+IXV6Rgqwsfb0/KQ85hsTPTOayBWVx39Cw/k2T?=
 =?us-ascii?Q?YJ3YN0GOxhesz+1T2BtdxfvERYSLWjLmR695JqvicAH01NFGU6aCm4aroVi5?=
 =?us-ascii?Q?OWWboa64p5nt9j6ZUHELX5370OFFceo/c6uA5zQ/nCT3HjLV7fqbh9nVi1gQ?=
 =?us-ascii?Q?cSSFXoUyfOolh0VOEvjtRW6124l2RhRHoDqEHAVBBHW2daXUj+oEhd+KsucY?=
 =?us-ascii?Q?2CGqM7MZ1cUSUnipvB6oa62lY/8qNtf3EO7jrQSjfIMtH0rpaBxtJ03w5p32?=
 =?us-ascii?Q?oqeHVRyMJirT3fbGdj1o19nM1yD9SoJ+h2X1PDTCC+H1pOYrpCf/SCQYrXdS?=
 =?us-ascii?Q?5rKx5MdKVCpRN/t3XnYo4G6ecrC0GQVxZa7W30AbHvFrZ61CpVB1REY30r1Y?=
 =?us-ascii?Q?0EhdMxWHZeAFL+a22dElVGGbCkEr6M+9rpMPtFQT0vCybb9Qfuto8iHB6qV2?=
 =?us-ascii?Q?mtvxuqUqj4bvDS6o8KEIRefsEax3qX7tUFlJfSOOkdGfmJNxjfVgmNaH2dQo?=
 =?us-ascii?Q?q6x1+wX5SJtNXLeyJdoXu+FxelwqlYVes/S4G99spNGkFG5y+vBf03fKrelZ?=
 =?us-ascii?Q?ULvcOxSJXAqWx67FYW6NDs898VOnSw/TGcRlmDYReH7VvLfLnpGcBqQ9N3Bc?=
 =?us-ascii?Q?DyhCCEM0MQEfduqT89nOz1kcCHxigcnlpYa/6NJHcz2Rt83FX+4hxbtZHIto?=
 =?us-ascii?Q?sd806LqBtQTFpHy8iWqMSXhoM7g09oTRLJBYlZwqhtYHShHhC7D3oR4q0jFC?=
 =?us-ascii?Q?u8UZbtga1uh6stsDuvQv4w+vFPAUrjAQZUzB2VXhtp9oZLajetTBdX+xAq/2?=
 =?us-ascii?Q?Vhnz5v6JcFYmLqVLuHFXI0bHykn1KhVPypLKubRQnnoz26MnePbSJMO8wLFq?=
 =?us-ascii?Q?JmPA6spavQvkCmi1efcxspVIhEtcsoi5iMb23ZGdUrOHXERol2RF6XkRt+qM?=
 =?us-ascii?Q?ufYjj/oISky0h2BO1z9wZrshEmH/nbIrA+A9VCaBSrptWsMMzHvQYo61KXNn?=
 =?us-ascii?Q?9chHJNOAKm5H/j7G0AuTBkr9zIAhL+/OFWwj5I3kNItu+w21iDyAmP72qv43?=
 =?us-ascii?Q?TeVRKG1nRA/rT/5mhG2ovrXWh54DpniKZP8D9scNuyk9lwO0Bqb/3N0ZZmVz?=
 =?us-ascii?Q?ECcjU+wXww/cyuqF4ZaH3mRpZ6PpEpi7y5jvvEn/lIwMrqn/j4RCmvERy3hb?=
 =?us-ascii?Q?c6m1G8I8INt68A0EP7vD4CCyc5uELz3CDmI6g7WhAvtmSBgY9u3EOfahEaoo?=
 =?us-ascii?Q?jW+UQOsy5SLMz/1WKooSQ47mAn6yxqhc6uX5bapF1shshwVoEnnPuCQ60EvV?=
 =?us-ascii?Q?doj5/7NzvlIf4JnEbXTjg9bjOuJqhG4fOvT4sKTeuFAy4I05hpts2LZX/NFG?=
 =?us-ascii?Q?hQoJ3i9Ve1jB4VwIA5AkzoXhSzImUCOI8hvT5jqt6X0SoCXSpJSMq2oQDt8o?=
 =?us-ascii?Q?TBlxczuB57O0yavxVZhjI3Id57WLjgM+ochjoTiWqoQpbupv3JXhlKdtArdq?=
 =?us-ascii?Q?iCrWpSuJxhFx9i7oO7EncppnUHmkXNRWoy171OifGTTOWPYFxqVovAtD3hyu?=
 =?us-ascii?Q?fJkT+NRJQ3FN+WWkrq0/NrcWvCDG+nRf7l8vwE3oevuZ3vbLHgTZl6vTSat1?=
 =?us-ascii?Q?of95vuUo3GZ//whpVzrkbtvUBljeZ3P1MzHg7df1uQJ33Jifijov/Q8d3Iwl?=
 =?us-ascii?Q?eNoSC3Hk7JqYdzPBcf5V5Unn2EazOzzeLZJAiJCb+1IP5o6sGfO6XMreepXj?=
 =?us-ascii?Q?cyIAV00WyA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Drl7xrF5XeHRloSmNY689S+my2BLaPWmF2vzIJZ3wyGUwBE9RDcjno2xPtgi0JEcCi/nE6dreai6qaCBU/IdeS0O+YDvlPV7CJrUcpt6g2sH82OiLzsZBxnONaPE8kdM7CKopYD+W2C+W//Wr7yAdMjBEfoTCVJylboXfmFMUU0ShcQHZisT44mn6FeeMCPfmlBQRxfuU6QYfFf2ijyULVG0Ks0WTCB7ArnOYQN1KNH8qoLd/d+wVJTzuufUupkYEYIW9JtDVYE5Np7CmBSvc3T0jm8QRP/ufLPAPRYu0WQ4tZGmeyF1A8MtFvHRV9wzzCQDfbqGbqm7+AOLgEMs2A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4acc2331-7c54-4c93-c189-08deb6e3cffc
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2026 02:51:09.6437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CRi+/BFolbwQbTC+INHCr4CLp3G2tNm8qXxOKR0DJmFIhJlEqFqs2uBEFJ9tL28GdnYps8P9LZL1AEo1MyNLBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9442
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
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,igalia.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E30D459E340
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 00/26] Enable Pipe writeback
>=20
> This is a set of follow up patches to the series to fix a bunch of issues=
 and
> extend support to LNL. Some of them are stand alone patches, some of them
> should be folded down into the original patch.
>=20

Thanks John , Rodrigo will include them when I float the next revision

Regards,
Suraj Kandpal

> CC: Suraj Kandpal <suraj.kandpal@intel.com>
> CC: Rodrigo Siqueira <siqueira@igalia.com>
>=20
> John Harrison (5):
>   drm/i915/writeback: Fix null pointer problems with writeback jobs
>   drm/i915/display: Use an unbound workqueue for atomic clean up
>   drm/i915/display: Fail writeback setup if no transcoder offsets
>     defined
>   drm/i915/display: Fix vblank wait timed out with writeback
>   drm/i915/writeback: Enable for more hardware than ADL
>=20
> Rodrigo Siqueira (4):
>   drm/i915/display: Add writeback transcoder offsets for DG2 family
>   drm/i915/display: Disable pixel_rate check for writeback
>   drm/i915/display: Fix XBGR2101010 bpc
>   drm/i915/display: Ensure only supported writeback modes pass
>=20
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  4 ++
>  drivers/gpu/drm/i915/display/intel_display.c  |  9 ++-
>  .../drm/i915/display/intel_display_device.c   |  7 ++-
>  .../drm/i915/display/intel_display_driver.c   |  2 +-
>  .../gpu/drm/i915/display/intel_writeback.c    | 56 +++++++++++++------
>  5 files changed, 53 insertions(+), 25 deletions(-)
>=20
> --
> 2.43.0

