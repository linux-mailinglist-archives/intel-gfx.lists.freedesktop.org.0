Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMHiMNJfpWmx+wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 11:00:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA9E1D5E91
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 11:00:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639E810E474;
	Mon,  2 Mar 2026 10:00:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NkeYnyyN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B80F10E474;
 Mon,  2 Mar 2026 10:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772445646; x=1803981646;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0HCHwAzVPdMX/2JieAHpNmsmZqsH4MLSBw0nyTCrxm4=;
 b=NkeYnyyNL8kAFmXSKUh9BBl7HmmcP7SnphQmcjbdoQYdW3MXpvNz/jTN
 /nJvJDeH52b+vGaPSZ2I3g2QBwMAxUqX2VnuCTAoyuEBT5xc7oHuwLcBO
 TP/l0vGb4cmKT9bDROYzxjg/D6RH7DkRUk0I55Js5zW3l1OXcdxZRnRT+
 70HYTFxG01Q+WsWP+OgUq9KZ9Y0DXRNyA+L0xJGyXRPR+IrWjhm9OjUEf
 qlPnkHGv2jfwIY5QEoTzQeKbXDgyxlQWs1OPt4P2BvjN8z4qGDSaaYdL8
 8GYOEDJJxke3Gjq+Ws+dunXlJ6qe7iBoZYGe4mTTWzjAUhDDddnIj5Pue w==;
X-CSE-ConnectionGUID: APCINHWUQESzyZgTDhtfcA==
X-CSE-MsgGUID: ohPhzEV3QGSFHcpeX9qxsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="73489152"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="73489152"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 02:00:45 -0800
X-CSE-ConnectionGUID: GyRPzZYMRSOAghSw5XZcfg==
X-CSE-MsgGUID: SHItWGncSQaoq7Ilk9h2Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="244691897"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 02:00:44 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 02:00:43 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 02:00:43 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 02:00:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CV0oz4XGnk5acS4WaqnghQ4Zj3Wv77VpwUzxiva8fMZwjJQ2ZwNyN3QiN4CDEW8jqvwNFQ6uTu/5cRZvTKO7J8pqvzUhB/pxtakK+4zqt+OIhNAQ4cps4bWoQj9w2OUqG9rJrF6JlUhp2MhEkrekwIabLS3vq1mIaThOxU8xg7QBA/CAO/Co05Zv24zLowf8KmFu6ACi3c3hJSA3JEZreVdonVmjGha+rdjiMLTUTe+Mrh0qKVfXfg++s4XWYeMU37UDUHfCIiNpH4RBpw7H9TGKF3pBS3j9RloKwekyuO3as5/oIvg883B1rq1t+a7awvAwUTaSVUN3EZCVzlWDHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FdGer0lUUG1v8yrLEnMjqNDOd2Yvnsd59ZtQs+AvC4I=;
 b=EwnkPN3gn9x7f3f0pAGUBmUg0x89Wjp5D8m2lZvFnv0t8qg7PAioh9Fhm36w+9DETDb4VcXbn6GCuFxvFg2RgT4aaqJREKuOL5T7x64EI9IMZ1e7TvJKx4PccRukEhxCaQbQxNKQK7BsKmBAVF0NFWggS4pM41qCStxun6gj8gP0VJKuod47WZdj9LUkgANgXpltZyultXk7TdLUkmwf5oHmfTwTsmNeSpUtlDCMhcmwXeW4Z9siaG4BivoMb04AMS9H0R9VVEqtTzgs4P/CynbeC4GcgJjpxZh50SrZAyoEjXkXvdTrP2Jok/EsTH6A7yn+GFj48nKCds/EtPmelA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB6888.namprd11.prod.outlook.com
 (2603:10b6:303:22d::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Mon, 2 Mar
 2026 10:00:40 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%8]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 10:00:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness for
 VESA AUX backlight init
Thread-Topic: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness
 for VESA AUX backlight init
Thread-Index: AQHcpUAMEnCYLJATwkydhRK/TgGzdbWRyHcAgAD89jCACEG9gIAABICg
Date: Mon, 2 Mar 2026 10:00:40 +0000
Message-ID: <DM3PPF208195D8DBB70E17DC6764BC5A276E37EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260224034526.2730130-1-suraj.kandpal@intel.com>
 <20260224034526.2730130-2-suraj.kandpal@intel.com>
 <1a76dfe14cbc90b4aaec6f0e54b4e8df9f480efa@intel.com>
 <DM3PPF208195D8DACF643E4D0D138F0128CE375A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <9f9be7c4361428b7ccb77dcc04f93b0eda024c8b@intel.com>
In-Reply-To: <9f9be7c4361428b7ccb77dcc04f93b0eda024c8b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB6888:EE_
x-ms-office365-filtering-correlation-id: 9a27a240-367a-42f8-d4ff-08de78428fbb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: WDtIX325sdbMtPv38xEqqhve2vL4hoCR0h1kJ+IAIMWjqr07H2YtaxY3eq9oPPYNdAMCqhZluQhLiacrafsTv/oFtEdTD/6QAx18DsXYSfgGLFB+458IWpQLsmW7a/toBzc9ldIGTBwZJkm/zz2EA1JSpDLpQSIkPhIA/udxFIiKL4Eu/WNOGV1UJoNOHffmWqDGPzLnaAwxNVRaGHSO1W+xLDushX3ThIXzlkhcKSafcD3Up87VWePtQGaYMy/2HIS/qqZaXEHPImOKsSL3NyG8r0Z8GFEslMMVBlzKD8C9420aTHk9ej+561KMncwS9zzC7S+ue7D6dDuZVwXrCH4Ba5Auhl7R0x6pZkgPCER6wfPzdFtKT0c3VftDzrjv2hAsDLDlRF1c62XdUdoXON9VqhCTLmaWOCyc0k8kiedK2ft6zU0vdYHdeirehyafirkZxgn2SuWs5bnmj/0PFJt1duzHlMCeq5WCrTfGlsKi7MBEtdVyiCUnI+I0YtTpuonBZgyhST8ItR4j+kP7WRkr0EyY+qKehDJ95c5HVVBcl2Mh1V2YR0xYo3a/yeYSOEtko3X6RKoF8RWRV3clzeU7jt7FXTGFaLAr+uYja9ZSZMpe9Y96HQ9VxSQkLA9Tauga2OVo0GQ2+md6VOH1BPrtUwdC3QQ60oyXDiL+ixKLEGEHjtaET1+e4JcRYZ0aX8TKrLTaiMIknIc6oPcNfUBLdjx/ZeWyYzdmvN5AfllXJCTLzw5SX5g6tA2G9Fgn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GWRD6FagimuAoltDDV7L2PsFuw/RNgCEwqlYUtl5KdcPqZP2l1R9xKf8TmT2?=
 =?us-ascii?Q?15fZGdJSxQTZzz3W/AmFGkFnpokQPd8gbik6cEXhVFuUhTuWsN1LNm+GtpQR?=
 =?us-ascii?Q?OcDyoF17M3E7IESEB84V5tlxktU4zOoDH/gBgrEAmyT7rNqYHwKVB43MtOqz?=
 =?us-ascii?Q?KEwF9CAseP/1kZDKOMeJ/i279JdWMiKLRXT2DkPbc0EgmU0mDLahIbXFLGz0?=
 =?us-ascii?Q?C9Z/Q8KC9Ad9q25oXB5mDB+pzRsIa0zrXhTmpVx3FAtc8z3ZgC/2giSbvJvx?=
 =?us-ascii?Q?4s1EoIQnBcEsfXoEDJynZpm8xrKVjyhhhkTq3cPbpAb9eAIZOJNL8M4lcU5k?=
 =?us-ascii?Q?IugQLMoTWx6OeeuNwzAh1Lchk7y/w1N+XUYf1xFn0q70AdX0UrBnjRgeHS0u?=
 =?us-ascii?Q?LfZaF7RpMZjiMSpy4ROdreNLmPvEuYEsG/UZhMagx54pL/JnE+MZq2ibFYw4?=
 =?us-ascii?Q?7MWKXQl9wHt4Ev+QHz9fYFCIQPraohRv4i6MREkhiOr7n0FIu8BKGk4jOzJX?=
 =?us-ascii?Q?qokSVTwtdXAZ/we1qgO91iMfq93g8T0X2QYSRh2lnaiBG5lvL8W0aOWD2RHl?=
 =?us-ascii?Q?QACXcJsT1/Iq6ZEGc+Tj1cnms3SL9QMGcMnYWx+CFfJxJo2FKFrKbuZt5s6E?=
 =?us-ascii?Q?1+D0eub+P0POIJRMczneZCilywprl9DvVtRdq+/k0J1oRjNHVzxGPhF3PH7l?=
 =?us-ascii?Q?cwPYuu/nUD7/Ajb0FJTGhTrkUUIoX8KjvhOZ2V1NNKnrCrmMGdK6A6uD5rXD?=
 =?us-ascii?Q?SRxpNVZU95XOkpiTHUPZVHbszg+hrAOKj9ZeErCPj4/w13/MqP8z5LK6jGmU?=
 =?us-ascii?Q?uLz+BsPOLoc2rjrQQ/TEeTrW/0GePaah19fMwFShRQBNuw2kXPBZSZqs4t6z?=
 =?us-ascii?Q?t4cc5wQwx55DmSyv0JLJuJAq/c7rZwTqPrclOhDiH61F0Ls4xv7VsvHOqbZ9?=
 =?us-ascii?Q?n7CoYqc4pV4F2gpRe4lJX0NW4dWuhGIqSUVItGWpPlnT1JUIVxhHsWoU0axw?=
 =?us-ascii?Q?kvW9087rcsa7cneGgtH/MBhqWegxqFWqsYqu1w/UXCM3daS9RFkmgrjPKyuu?=
 =?us-ascii?Q?lcnppLEkZhSZ24PSMgWGhqG6V8VkzNhFiNFnEHMHhRITwPpT9BTP/P9qBhRj?=
 =?us-ascii?Q?z0BCncLU3sqxtOWh1ygMcqfCu3pS2I8GeSmpjE8ztqp0gArt8JE4A0rU6RjG?=
 =?us-ascii?Q?2LxR/2SwrMZUDDvWbIRO1uHujOR8FFPWOrSRit8goYDcgP4zXu8Qg92xbAOs?=
 =?us-ascii?Q?bCHp91e34Z4wVCw28YMzSyygNbmx9sz5cufwys4IPivo8zMvUjDnkHpt5gZP?=
 =?us-ascii?Q?OBkUAjqF77J+gYIQ0xmcF3Dh0lLyf7/tpK61kQkkNQua/35QqncxZiFpsijz?=
 =?us-ascii?Q?YvqIrNZOPFpmwmsaDSP6Fuf4bWPaDrmrltmwQm/qgn+XkmLlwjISWUrs0KG1?=
 =?us-ascii?Q?O0dILyjnMkfECqnk4z0jamMlY/Jah+Y7ictrT2x379wMs6QTSUn/QgXMSWXg?=
 =?us-ascii?Q?w/imWsIZ2tiJPDFdXkwRcZzxiELEk/X+vAp2ngKc4afSQZtmfUDRmB9tzk67?=
 =?us-ascii?Q?DbBbwE+Auq6S9M81cBLhbaM1C30eqZIAEnEAzqAvY02b6MiPfCVStQ4okQZH?=
 =?us-ascii?Q?38nj8ka7h7fJ1bOR4nkPXAPk4045BkQ8PBtRxpuMjU/3nb64ZhWfjXkr0GXu?=
 =?us-ascii?Q?ddsKWZ+QkPih/bz+lvEmesvVIUs8ZVwoh9dr9I2ff+goVpWLqXPLvKEELdEH?=
 =?us-ascii?Q?++YuTL7N9w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a27a240-367a-42f8-d4ff-08de78428fbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 10:00:40.7693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Co0vbHp7igKsJpbUu08wsmZeidNiNuX0uqhc065vFd8xvdoLSrqrAxJpI+ziJQrf+7ePH45hjjPyOnWsYYk6jA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6888
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gitlab.freedesktop.org:url];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2FA9E1D5E91
X-Rspamd-Action: no action

> Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightnes=
s for
> VESA AUX backlight init
>=20
> On Wed, 25 Feb 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> Subject: Re: [PATCH v3 1/8] drm/i915/backlight: Use default/max
> >> brightness for VESA AUX backlight init
> >>
> >> On Tue, 24 Feb 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> > If the brightness fetched from VBT/previous state is 0 on backlight
> >> > initialization, then set the brightness to a default/max value.
> >> > Whenever the minimum brightness is reported as 0 there are chances
> >> > we end up with blank screen. This confuses the user into thinking
> >> > the display is acting weird. This occurs in eDP 1.5 when we are
> >> > using PANEL_LUMINANCE_OVERRIDE mode to mainpulate brightness via
> >> > luminance values.
> >> >
> >> > Closes:
> >> > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> > Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> >> > ---
> >> > v1 -> v2:
> >> > - Let users set brightness to 0, make it so that it's just not done
> >> > by default (Arun)
> >> >
> >> > v2 -> v3:
> >> > -Update commit header and message (Arun)
> >> >
> >> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++++
> >> >  1 file changed, 4 insertions(+)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> > index eb05ef4bd9f6..c40ce310ad97 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> > @@ -564,6 +564,8 @@ static int
> >> > intel_dp_aux_vesa_setup_backlight(struct
> >> intel_connector *connector,
> >> >  		}
> >> >  		panel->backlight.level =3D
> >> intel_dp_aux_vesa_get_backlight(connector, 0);
> >> >  		panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> >> > +		if (!panel->backlight.level)
> >> > +			panel->backlight.level =3D panel->backlight.max;
> >>
> >> How does this help when .enabled is still based on level !=3D 0 above?
> >>
> >
> > Well we keep the backlight.enabled as false if we read a 0 back from th=
e DPCD
> or the current level state is 0.
> > This is to maintain the policy that if during setup we get 0 as
> > backlight value eDP backlight is currently disabled (which means
> > __intel_backlight_enable needs be called). We then change the current
> > level to max so that when backlight enable is called after setup from
> intel_backlight_update, we enable backlight with max level so that we do =
not
> end up with a blank screen. This is also where we set backlight.enabled =
=3D true.
> > This is  to tackle different eDP behavior where, some preserve the
> > last brightness value programmed in them (in that case users want the
> > same brightness to continue) while others don't and just 0 it out inste=
ad of
> having some default value (in that case we keep backlight.enabled =3D fal=
se later
> to be made true during the __intel_backlight_enable call).
> > We face these scenarios in some compositors during the pass key phase
> > where the compositor is still totally not doing everything and does not=
 send
> us any explicit brightness value to set thinking eDP would have some basi=
c
> default value of it's own . We end up getting a 0 from DPCD and we enable=
 and
> set the backlight enable with 0 value which anyways later causes us to ca=
ll
> backlight disable.
> > In this case during authentication in some compositors like Fedora
> > there are cases where we do not get a explicitly backlight value till t=
he user
> has to blindly enter their Passkey, after which the compositor sends us s=
ome
> sane value which we then program.
>=20
> There's a long history of problems with the PWM backlight unexpectedly go=
ing
> from 0 to max.

Right but at least with this now luminance values will continue if DPCD mai=
ntains its state if we get a value back, otherwise we set a
Default value.
Can we proceed with getting this merged ? Would really help the user.

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> >> >  		drm_dbg_kms(display->drm,
> >> >  			    "[CONNECTOR:%d:%s] AUX VESA Nits backlight level
> >> is controlled through DPCD\n",
> >> >  			    connector->base.base.id, connector->base.name);
> >> @@ -573,6
> >> > +575,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct
> >> intel_connector *connector,
> >> >  		if (current_mode =3D=3D
> >> DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD) {
> >> >  			panel->backlight.level =3D current_level;
> >> >  			panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> >> > +			if (!panel->backlight.level)
> >> > +				panel->backlight.level =3D panel->backlight.max;
> >>
> >> Ditto.
> >>
> >> >  		} else {
> >> >  			panel->backlight.level =3D panel->backlight.max;
> >> >  			panel->backlight.enabled =3D false;
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
