Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJgRJLvT7mkKyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:10:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7539D46C484
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:10:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A57210E10F;
	Mon, 27 Apr 2026 03:10:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hLwJyN5U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78AC910E08F;
 Mon, 27 Apr 2026 03:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777259447; x=1808795447;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zC3CaCefc8IOY00P9Ns5Zav9VYHF3DNz1ywhXcYra/U=;
 b=hLwJyN5Ui24PTZbeYy4yozBXIn9ephaX1HXHjRzHmWHephlMTEOK0H1C
 V6xDtq1ahV1qPe6gHdgPatAhR/2/6+PheqAtBkqgCcFB2OqMxwx8/CqVM
 EJDgFkvez4GqQnxIpN6idU2ydSCzU0jqulSDW6oByixA+DsSX6D6D4hC0
 f6w4bh3Nl1apbFG1u0CxASA1MBdY2v1RFpDzndtk71Huv6hXREaBCy4L5
 HmktAPgibJlwXUhmcUP03gPhboBfabVLEm9aVLT6eN+ww403nBUM5qv5M
 Uu3m+SYsB8lGL7tO2TiCfbgGOn7JbjIYtV1o/iXDX7DN8H4BHy9cK3sEL w==;
X-CSE-ConnectionGUID: sfNaEPznRLaXtsmZSGoSPQ==
X-CSE-MsgGUID: KJYz2QUWTgy3b0RNy9aM7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="81747699"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="81747699"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:10:46 -0700
X-CSE-ConnectionGUID: Cn6ndw9bTPWRgz92U0b8TQ==
X-CSE-MsgGUID: 78Ek3RYZSo2nlE3/jqT4GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="226978109"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:10:46 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:10:46 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 26 Apr 2026 20:10:46 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.39)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:10:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ez336+gUsmx/3fqDTQHaSsSwhAkwjZTneo8HUgJE/SqIw0+1IS77k1+DltJlKFS9uK1rv4K2BvxydJ2a8BEc4r06LeOcOlJCqR+s9TE30IluU6AViEeTsOlR8rAdqp9J3kC35xQ+QBux4VB+CWvTzjILyp5/KDFuycf1QPqXm2guxpAsvr3Axk5bbD5lV+dpW2219JpiPdL4N1C9fwTfkx2wG+2P2V6gZUi/iJ0xGfjoJ63ofYjQdbPeUQfsDtSNdo9UoJ52zD1+c27om4Qb5US6YfyHzmJ9lzIPfJzZWblQiWVR6uvyzkGdqquFcagnmk3+hhfxX8BXf1y89R7S/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3+oYZammJXadpnt54t5bWPy7qTJHUNpWGME4Db8k4o0=;
 b=nHl1r2zyS5LBYpnPeGtwS9cxahs1+YCZRzuYqTyiGkXP9GEb5y4IhR0648skMHt7sux72bAuJ8ctvZb1joWt/6Lmk7GZTcYXuHv471HYRLR/SbctonCSz4oRE3Wh9rhNg+9eRUsA4DpxTkPrRaSbjUJfUXafPM/LPNIPBGc0dfJ/a8EYmmfKmgdYliBi3mkQtUKOu4Go+HM1JeDW1KCYucdG5OPnsb+jyJuA4VbfZZMwu+j2NGhB/YWy77wt5/ES7fHI8JmWb0U6Nf9q6kE9aCXqaAk2RL91fM1nMJbxuS0Fp4U/eJVmgoouPNuL1hOFL1ePR85PeBRIKZd34AP+jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.15; Mon, 27 Apr 2026 03:10:37 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 03:10:36 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH v2 07/13] drm/i915/display: Add DC3CO eligibility
 computation
Thread-Topic: [PATCH v2 07/13] drm/i915/display: Add DC3CO eligibility
 computation
Thread-Index: AQHc0nTHK1+XP8CJMUiqj55Daf//ErXyQI3w
Date: Mon, 27 Apr 2026 03:10:36 +0000
Message-ID: <DM4PR11MB6360EC230948A51A577F63A1F4362@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-8-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260422162622.1869831-8-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|LV3PR11MB8508:EE_
x-ms-office365-filtering-correlation-id: 865d0334-dafa-40e9-0e54-08dea40a8dd3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: qmVJwTfjqAr6mtw6dlEmd9vNNVz03BprsTVC2kZZaf2VOy62Ctp+cOWKlVEF4RaTbcJjffQt0pp9KRnRZHwSYag2ib6MXu+wOH22AV160enQhDbOuC/ueqrIynPXCVXrIBE7gMuwMgbewQwn3d/NaYdcBt807RdBj8VPvWngCA/fSeOKtqV12kVBoNUdQ8zlN+SPbx0exb3jx8+5ckC5ye1paXetUSiCE3j1+IgSyXdwa0TIDzD96JV9SXkQ0QaAnnZzeuiWLudaEvbDGCoTwrvnyhbViPDJNci7tSXZiBrLNCK2OAe8bxmTDj7cejhk2nN0ohqIgK2RefIegfy1ur7KVdwAEBiuqSLHrYgwiYVjPux3pVzSZjUngoXg3o9VWQcjzO11DCCHuAwWFDs+43m8EGTivbRh/ISEuKMejO0sxUSj57uVXmNC+EPi3+vthmnCFghIOhm5wdBSyqmlt07+zvspbgY9jH8RolP8XCsnCw9l4hwoXpxxmmDcC7SAVZ42E3VUKT+wsRtjq9tDU17EKAye4PxEAvA1DnzbmzGMThAH2bqt7mUXAk4aQXndW2UTcE/Bw/CrtYuE+js23wwP2m8kT0aoHxcfvTToV7rTs7r23nkMvtj+4Z4K+ODoGvLIAvkT7URPfCGF1h1BL28B8K0HUwUV9h7TkPZ44QSZ27Klb6wGL07B6ttnOx6BxQyWl5djZCFO2DAWV5h/FSXFva5WbcnMT2g0BgtlU82yvbmS2yokcmvSlzfxi+uuOeIInXteLkQkHBzZgS4vavj3twop/BcJsCl7HQN1mOc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ejR3dLKXj6IGzr1hQ8QOtsqz9xjsIwMdSgc55lNZIClJ/Lhf73aVDpER0eMj?=
 =?us-ascii?Q?PNum0XYQcnrjQp/PTbQ0USi9QERzt7iJSxil+OERz6CUtgHhPzjH9dER/ucX?=
 =?us-ascii?Q?uSeBW8pxaQ7c7VTAWKdo12ANVw44GTpl/q1QGJ9Tk9e016sinlwpSM2emBlK?=
 =?us-ascii?Q?YyT0kuYTWpNCVw6CRlKCGGJtX+LhSoxx2MNRJ29cW59L4X1pwnVrVCLcejvq?=
 =?us-ascii?Q?ncdE7cMpabvzo64nl80L+FYMr+214L0X1SZM9NR3GUtsBjwoLxndE2wzDgyT?=
 =?us-ascii?Q?yZmj43AA5GYqapZRo4Iq2542Xy/J4TbDZOufmsWvOI84/tu1ngAIOMo86wIH?=
 =?us-ascii?Q?5EIGgKV59S8Pxyw92Yr0Hvb7E6bkr1yRk5hjPAnSZR0ag4dRAjq9077x0YY7?=
 =?us-ascii?Q?hbWl3VAGolV7Ttyn/C5knXb60fvF5L0E9JfGZU82aX1v/imp+s72E19HWgkA?=
 =?us-ascii?Q?LS6xjbqGY2bfO5eRBLEqEhbg3XmhkW9O95A62zbTj6DD6cMS7FjqdqZLNYIJ?=
 =?us-ascii?Q?2DV5WGo3R6O52EnIk375JXKwlxJ6T/MZJwu6F7lR0A9kEDD489Lc+nRXMWJa?=
 =?us-ascii?Q?oFZdOk/f3P2S+X99p+Z+b5iXO0pgTUM2CcMkdgxyYQeYJXR3+pyoUyU5QSSi?=
 =?us-ascii?Q?VHs3CtLGdqiwL9ntoSWhamJGcXv+IaZTodMSi7869kE69CX9IIaOqIO/h+I+?=
 =?us-ascii?Q?dS+2BDPqDTE15W3LaUk9Kf0jgwwBYpsIg+0KQdoEkbXYOAlWS91KJP9IqOGH?=
 =?us-ascii?Q?o2bq1sAPYuJ87z0H6X3oD/rP3wN7sLq0VTqxkZMVI96CbFEAzmxwBDuc5/L8?=
 =?us-ascii?Q?Onqlpb1rrKZImHuJbAEkGAqAoZ8j5NRe+aQLAOS7xLJZ4A3h4OA3Y/SrZ9rC?=
 =?us-ascii?Q?w6n2ed7EScS6F4xXxn83Wg3rTNGesTCrU1PzLrMZwhsKm6s/d8/g2J+7TIbu?=
 =?us-ascii?Q?EMqg5lx1hI4eB9V1NwYXha5xGkmwkJI5N1Y0u7mz9w5NatR2TJWiVaUvGWbD?=
 =?us-ascii?Q?c28hpq82Nx2gv9w/jB7HCp+KLAkfSLCnlL9zp2vtg0NeaauiC9Ij4dTqj6p6?=
 =?us-ascii?Q?W4Ju4HRWEuSAeNNkgeWKRBqwCLkFzH5fyNLDf1t1BntxZbsq+xo9cGzXf4Im?=
 =?us-ascii?Q?ant1B+oRH95RJW8RfyKPFxBEMm6wazeDJ1I3Dzz3ILK68saj6FL6YrwurgTD?=
 =?us-ascii?Q?v0PSfFT9LY/ooa71nVeIwd/6ZR2XDPf71xhRZfkJTtHXsj2w1fRHsidpUYXK?=
 =?us-ascii?Q?cqVrbRUS2jAdJ4V9mamAXub3+S08QbZ/ZLAcj4kMcrT1fTDOyMTC1rvzom7e?=
 =?us-ascii?Q?4z1KkXf+fdrx6nx76iFZ5j8uYMeE/ZcspEvTXgPwPR7/PWe18MSa1gpmP+yM?=
 =?us-ascii?Q?TM0Q0/CDu//sT2AP4E0Jpvczv2T7nyvC3Ql/AZCeh3+FE4uJmow/iGG4OQEi?=
 =?us-ascii?Q?j+HJY2/vTbXeXwU6RY+DgfGfsI46C75zpkSQwiTzPAbX4+qZ1S8YQIte8mFs?=
 =?us-ascii?Q?beJskYcvG8Z/xy38She0sSyts7i86ROvOjMKdcI7gKcogsORHZWggo8guu7c?=
 =?us-ascii?Q?CRLxgZCBm8zogZHLzuaZK/CrJVFmTpRfigOVf6Gy9Wk1I9Jo8wO8/ZLkfdfA?=
 =?us-ascii?Q?JdeYit7hZ4LdWABRNJuOvKhZVnxCMghLycZ38c0siZWXyk9SAciompLtLkDc?=
 =?us-ascii?Q?EFuox9dpzp7tR2TdjFmmXvoanvDE9oDxPwd0Dh94MrNLlEF6k82x25l1lPPi?=
 =?us-ascii?Q?ulL23txcpMyxRIrtHtDWrr72N957UDvHBvDemw4qRdFroP+Ff/XcrC4XhqN5?=
x-ms-exchange-antispam-messagedata-1: YXAmwUPgIaTIyw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hFBSFO0TEYfuQaRv/Z2GosapOrnM9iguZNclmD0OY2Sw58IiONLphHAamLdtmwMX82y1IWpIF2iHE46urMfgqEZCYxiZfuKdBRao8yFhsIHI3MiVHDk51njcHCtOMR2SmFIpAbJqLuiJznqY4UrJFdETPjSmsnBpb5AhvyMVPV190YE2stLZO7ZWSQgOjG6PbRVUgevzmIUxgNmqvPzAD4ZfmGrRqNvYRyGP5Pqx8sxNEyB8HYH/0wsOPooSMrDUv9jw4CKo7NOF+jwOrUcPZ2vx4iuMsym30QrZk6HI5FTQ0f37wIQhO4QdSC5Aqn3OTwpMHQTvwo3A5IPhM4lYlQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 865d0334-dafa-40e9-0e54-08dea40a8dd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 03:10:36.8793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8oCvrRNVOHTvI0RGj4QQQtyyWlrwJsHDLymvKnaP7BA4PZ6lAkiNdWLtCppP0umgfOmwa8oEXwjsa9thtvY8xA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8508
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
X-Rspamd-Queue-Id: 7539D46C484
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, April 22, 2026 9:56 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH v2 07/13] drm/i915/display: Add DC3CO eligibility computa=
tion
>=20
> Compute DC3CO eligibility during atomic_check based on pipe/port constrai=
nts
> and runtime triggers and store result in display->power.dc3co.
>=20
> When DC3CO is allowed, request DC_STATE_EN_UPTO_DC3CO and reduce the
> DC entry delay. Otherwise, retain the existing delay and set default
> DC_STATE_EN_UPTO_DC6 .
>=20
> Changes in v2:
> - Move dc3co state from intel_atomic_state to display->power (Uma Shankar=
)
> - Use #define bitmasks instead of enum for DC3CO triggers (Jani Nikula)
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 92 ++++++++++++++++++-
> drivers/gpu/drm/i915/display/intel_display.h  |  1 -
> .../gpu/drm/i915/display/intel_display_core.h |  3 +-
>  .../drm/i915/display/intel_display_power.c    | 30 ++++++
>  .../drm/i915/display/intel_display_power.h    | 22 +++++
>  5 files changed, 141 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 674a4ece6d0f..de493d04a622 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5870,6 +5870,69 @@ static bool intel_pipes_need_modeset(struct
> intel_atomic_state *state,
>  	return false;
>  }
>=20
> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
> +					     const struct intel_crtc_state
> *crtc_state) {
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> +	enum port port =3D dig_port->base.port;
> +	int num_pipes =3D intel_crtc_num_joined_pipes(crtc_state);
> +
> +	return num_pipes =3D=3D 1 && pipe <=3D PIPE_B && port <=3D PORT_B; }
> +
> +static void intel_dc3co_compute_state(struct intel_atomic_state *state)
> +{
> +	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_encoder *encoder;
> +	struct intel_dp *intel_dp;
> +	int active_pipes =3D 0;
> +	u32 trigger =3D DC3CO_TRIGGER_NONE;
> +
> +	if (!HAS_DC3CO(display))
> +		return;
> +
> +	for_each_intel_crtc(display->drm, crtc) {
> +		trigger =3D DC3CO_TRIGGER_NONE;
> +		crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
> +		if (!crtc_state)
> +			crtc_state =3D intel_atomic_get_old_crtc_state(state, crtc);
> +
> +		if (!crtc_state || !crtc_state->hw.active)
> +			continue;
> +
> +		active_pipes++;
> +
> +		if (active_pipes > 1)
> +			goto done;
> +
> +		for_each_intel_encoder_mask(display->drm, encoder,
> +					    crtc_state->uapi.encoder_mask) {
> +			if (encoder->type !=3D INTEL_OUTPUT_EDP)
> +				goto done;
> +
> +			intel_dp =3D enc_to_intel_dp(encoder);
> +
> +			if (!intel_dc3co_port_pipe_compatible(intel_dp,
> crtc_state))
> +				goto done;
> +		}
> +
> +		if (crtc_state->has_lobf)
> +			trigger |=3D DC3CO_TRIGGER_LOBF;
> +		if (crtc_state->has_panel_replay)
> +			trigger |=3D DC3CO_TRIGGER_PANEL_REPLAY;
> +		if (crtc_state->has_sel_update)
> +			trigger |=3D DC3CO_TRIGGER_PSR2;

These values will get updated even if active pipe count is 2. Please check =
once.

With this fixed,
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Note: Would be good to get feedback from Imre as well.

> +	}
> +
> +done:
> +	intel_display_power_dc3co_update(display, !!trigger, trigger);
> +	drm_dbg_kms(display->drm, "DC3CO allowed=3D%d trigger=3D0x%x\n",
> +		    !!trigger, trigger);
> +}
> +
>  static int intel_atomic_check_joiner(struct intel_atomic_state *state,
>  				     struct intel_crtc *primary_crtc)  { @@ -6544,6
> +6607,7 @@ int intel_atomic_check(struct drm_device *dev,
>  	if (ret)
>  		goto fail;
>=20
> +	intel_dc3co_compute_state(state);
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		intel_color_assert_luts(new_crtc_state);
> @@ -7415,6 +7479,7 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] =3D {};
>  	struct ref_tracker *wakeref =3D NULL;
>  	int i;
> +	int power_async_delay;
>=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>  		intel_atomic_dsb_prepare(state, crtc); @@ -7621,11 +7686,28
> @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		 */
>  		intel_uncore_arm_unclaimed_mmio_detection(uncore);
>  	}
> -	/*
> -	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
> -	 * toggling overhead at and above 60 FPS.
> -	 */
> -	intel_display_power_put_async_delay(display,
> POWER_DOMAIN_DC_OFF, wakeref, 17);
> +
> +	if (intel_display_power_dc3co_allowed(display) &&
> +	    intel_display_power_dc3co_supported(display)) {
> +		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC3CO);
> +		/*
> +		 * Use minimal re-enable delay to allow DC3CO entry on
> +		 * the next idle frame, unlike the 17ms guard needed to
> +		 * prevent DC5/DC6 toggling overhead at 60+ FPS.
> +		 */
> +		power_async_delay =3D 1;
> +	} else {
> +		/*
> +		 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
> +		 * toggling overhead at and above 60 FPS.
> +		 */
> +		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC6);
> +		power_async_delay =3D 17;
> +	}
> +
> +	intel_display_power_put_async_delay(display,
> +					    POWER_DOMAIN_DC_OFF, wakeref,
> power_async_delay);
> +
>  	intel_display_rpm_put(display, state->wakeref);
>=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 1e76a455d7c4..2795e4b9e799 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -521,5 +521,4 @@ bool assert_port_valid(struct intel_display *display,=
 enum
> port port);
>=20
>  bool intel_scanout_needs_vtd_wa(struct intel_display *display);  int
> intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
> -
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index c5a07090cba6..13e9b986b6fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -535,7 +535,8 @@ struct intel_display {
>=20
>  	struct {
>  		struct i915_power_domains domains;
> -
> +		/* DC3CO eligibility state */
> +		struct intel_dc3co_state dc3co;
>  		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely
> read */
>  		u32 chv_phy_control;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index f626803bbd88..ff1915be59c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -372,6 +372,35 @@ bool intel_display_power_dc3co_supported(struct
> intel_display *display)
>  	return (power_domains->allowed_dc_mask &
> DC_STATE_EN_UPTO_DC3CO) =3D=3D DC_STATE_EN_UPTO_DC3CO;  }
>=20
> +void intel_display_power_dc3co_update(struct intel_display *display,
> +				      bool allowed, u32 trigger)
> +{
> +	struct intel_dc3co_state *dc3co =3D &display->power.dc3co;
> +
> +	if (!HAS_DC3CO(display))
> +		return;
> +
> +	mutex_lock(&dc3co->lock);
> +	dc3co->allowed =3D allowed;
> +	dc3co->trigger =3D trigger;
> +	mutex_unlock(&dc3co->lock);
> +}
> +
> +bool intel_display_power_dc3co_allowed(struct intel_display *display) {
> +	struct intel_dc3co_state *dc3co =3D &display->power.dc3co;
> +	bool allowed;
> +
> +	if (!HAS_DC3CO(display))
> +		return false;
> +
> +	mutex_lock(&dc3co->lock);
> +	allowed =3D dc3co->allowed;
> +	mutex_unlock(&dc3co->lock);
> +
> +	return allowed;
> +}
> +
>  static void __async_put_domains_mask(struct i915_power_domains
> *power_domains,
>  				     struct intel_power_domain_mask *mask)  {
> @@ -1051,6 +1080,7 @@ int intel_power_domains_init(struct intel_display
> *display)
>  		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
>=20
>  	mutex_init(&power_domains->lock);
> +	mutex_init(&display->power.dc3co.lock);
>=20
>  	INIT_DELAYED_WORK(&power_domains->async_put_work,
>  			  intel_display_power_put_async_work);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 05880e9da89f..0b1a06f88ae5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -131,6 +131,25 @@ struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);  };
>=20
> +/*
> + * DC3CO enabling triggers (bitmask).
> + * DC3CO may be enabled when at least one of these triggers is active.
> + * Additional constraints may still apply.
> + */
> +#define DC3CO_TRIGGER_NONE		(0)
> +#define DC3CO_TRIGGER_PSR2		BIT(0)
> +#define DC3CO_TRIGGER_LOBF		BIT(1)
> +#define DC3CO_TRIGGER_PANEL_REPLAY	BIT(2)
> +#define DC3CO_TRIGGER_ALL		(DC3CO_TRIGGER_PSR2 | \
> +					 DC3CO_TRIGGER_LOBF | \
> +					 DC3CO_TRIGGER_PANEL_REPLAY)
> +
> +struct intel_dc3co_state {
> +	struct mutex lock; /* Protects allowed and trigger fields */
> +	bool allowed; /* DC3CO eligibility result */
> +	u32 trigger; /* Bitmask of active DC3CO triggers */ };
> +
>  struct i915_power_domains {
>  	/*
>  	 * Power wells needed for initialization at driver init and suspend @@ =
-
> 187,6 +206,9 @@ void intel_display_power_set_target_dc_state(struct
> intel_display *display,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display *displ=
ay);  bool
> intel_display_power_dc3co_supported(struct intel_display *display);
> +void intel_display_power_dc3co_update(struct intel_display *display,
> +				      bool allowed, u32 trigger);
> +bool intel_display_power_dc3co_allowed(struct intel_display *display);
>=20
>  bool intel_display_power_is_enabled(struct intel_display *display,
>  				    enum intel_display_power_domain domain);
> --
> 2.43.0

