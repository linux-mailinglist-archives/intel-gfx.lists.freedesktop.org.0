Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x1kQCWnlKmrwywMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 18:42:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0366739F0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 18:42:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JwhfvJ88;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE2910E827;
	Thu, 11 Jun 2026 16:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ADF810E827;
 Thu, 11 Jun 2026 16:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781196133; x=1812732133;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=igcWbe25hMfCjIvOr38364MKYSHtzSWh3kMsjndk69A=;
 b=JwhfvJ88/mQ4RCklWgH3G9+HByuFjmagnsTulnLknVs97JZlCr2tjII9
 dEbODq9dBqAKcBRMj/R5Aw8sQpHA7wvgdI8UILPI42Y2AvXhBVGKxCaq3
 +ENRuoYFiZ8tDmOZ/xjfY/21g3/cic/IRUiiWoAvvow5dsIK2RJ2rfwlD
 wDGECejD6uQ4RLBrFrEOOH8u5i93xypEFKjlh50iKqGDDg1KQziq3jNRH
 5xXIU1FrMuAgbJ1FKQtpbSEmeasYkgEPuR5ts20GOqDmhKPQnvdooIOAd
 +XSZVx1Hzwg2zEg8KxtVl5AePCvEH2RZjF73/iuLAHuRG03XKoyZym8gW Q==;
X-CSE-ConnectionGUID: wya3/DxTQky54kZyeWBwtg==
X-CSE-MsgGUID: QyXbWsZER36ChcRDq/49cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="85857012"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="85857012"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 09:42:13 -0700
X-CSE-ConnectionGUID: mCNifwxZRPSN3BYjxGya1w==
X-CSE-MsgGUID: YnRQzsrNQE2sHeIy6gr5kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="246570846"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 09:42:12 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 09:42:12 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 09:42:12 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 09:42:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JP32wTTvGtGrWQlRYUE9zGAarofc4hRMEXRLxNfm8fmvVEZ3Wt9uhvkcR9WmWbyCVA+DD6kP6J8y0aF+SzpJ9Ant9gR5lT3pKOYV4Dx9cB6GMTU3GvLSWspiGAYtPnBOwvyJzPBjIbAbXxp9wS9P1OiojlnyDB4uRa6CAIRTSMjW5ooxslPJoL0iutN+QDoAuk83+IhXKM69FYGJRZQOcebxAaJaWf2Ufv8Kv0xs0ipscfBgvBPm2bNvFjqmVsw/A5OL8AbrowNWUcHmCMot3UFJCS8BeeKNjspe0/s8sWXD18S7MkFkV750oLzADnguZE/lKf/N3683vpdf/Oy9bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6JksgtkpEmJw0tDSr6kQ8ofWqOdVdM7IO+UN2bQGxPc=;
 b=LKlulMt9JR7d8ktjJYTBhlw6ArGljTh30mvjnu0hR2gVtz5u2OLd3Xu/geS0eajdOhQ/DqTPhKbzdCC1a2g20QzzHjlQKQ6yIitWctTj7UKFmlj1m6uV45hI3ZTly9Jl5J6g2MXAK1Hxmzpwl0RyJfC7B34ExzkVAi7UBfCdLzm+tyKH6naYTg2lXIDCb4z0r+zwOuTqu35sBzCaTbm2G0fSjmvF8y34nA43p7pjPFJEgl9+r7y1du2PZcWx4a0UjvziTPCYZdS8Y77LTZLlSwbFhKSDtoEnC05Ta+0otyhsq8z7wZj3xZ4fAZmlfkomMetN1zM7Ykc3hOd1rf4ccA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB7387.namprd11.prod.outlook.com (2603:10b6:208:421::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.18; Thu, 11 Jun 2026 16:42:07 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 16:42:06 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 08/20] drm/i915/vrr: Pass transcoder to
 intel_vrr_set_fixed_rr_timings()
Thread-Topic: [PATCH v8 08/20] drm/i915/vrr: Pass transcoder to
 intel_vrr_set_fixed_rr_timings()
Thread-Index: AQHc85dNiXC2AcU93UqGXSycglxPZrY5mwKw
Date: Thu, 11 Jun 2026 16:42:06 +0000
Message-ID: <DM4PR11MB6360E5B6EE88054807847D24F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-9-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-9-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB7387:EE_
x-ms-office365-filtering-correlation-id: 2f020440-fc37-454a-751b-08dec7d85fde
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|38070700021|22082099003|18002099003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: IMR8VCN5/cibjmfub5/KjeXw9zk/d9b51U0Vbr8T8uCvL1PtzaWYXm4Rc9T3aNmiz6dzbCuPtGtxXueQSh/rJPr8gqRIuP+uzyU9wsksy1onzoK/ZKCs8NSRN9tT/6RmU+9UOdAqLhuKmg7f8Ob7ETKK7QdrRjuWxFgX+mu5C2L/puYwb5YHyoN8c0VSGNL3IkdeT3KCP3+9VHj+C9A/H9pqI3ispu71wyW461Q/XblV4NYmm4jtYyT0ox1RTOjiqCzlGU9FMqVxZ4HMtsfO9twGHhopBIM/6dvqs2DeCDkS+fXdjYzz9n9TYdVJa0xF6xql1dr3HdHJM0w8KeIYEe6aiNQqOohdPN8p2jhrzhbd7nhmONkHRByB2/5e7dX0h+d9Pfa10oEHOrA7txVk+79CALob4yMRarHtOdb54pS4NUC/5neKDQqMIho0nfhqxdnhxHMr4SJRqqw9AGkazWtbm3bOTkWUW5gJrAr6l58ipAXCNVsp39ZcK3+acd/jP57gLok2TQtdeQTHnHjOzZIjO7HIvefcWJRCpA6FhqHzQ9H1qVqsvpg8BJP6pDTVvxErPAo3KvGcgncKveqFevs4Zw133dy6tmB74EQm7NwSzGTvyEA7vhrQMAm1Yb7Yq+y7ruoTbm71Elm2PhoKDgTilO+JxEAAWzOeKwG+2t/YU6sjr23zVFQw8Rq4Mi7tLxh3w54HEttrICapamoLr78vdNz01hrGS+D4IgirTQULBraj3D2+BhsnJnTiC6aS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(38070700021)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G61ciY3pUqf6JAO9+iaGhrZtqfuIvUvn7aozPBkWRgCS8029EvqOakqR8X4X?=
 =?us-ascii?Q?/JpyVE48KDMWixQWvaA7AAcw49P1EmFEYgdWvNlZvsuypzzbi/lkuBWMhQ5L?=
 =?us-ascii?Q?q48T5SgcbGFoxVzW0Ppoe+3FknP03EXzTBzsze4kq5Om+RsVf6nbI2TngJvR?=
 =?us-ascii?Q?sf0MURzxaB+nbCKzzshfjH2z1PzI1GWWvQJynIDXoizaJkDYSL4e/mJXh41G?=
 =?us-ascii?Q?SUZhsCdVudJjkEE7XmCUPKIdWvzQIyyD4COJKDGHmSfbmZsxQ3HDuZHVZT5x?=
 =?us-ascii?Q?6CGkIdjEniDgVs+WmVJmkOModJJ62AojbRamQcIj+UHI5HHucOsWy1xvwg9a?=
 =?us-ascii?Q?rmdrLCndhoRQ/v2wDaWIMjQ3WQiwvnYTJQa0PSQzQt5rdRFiCLrPatLPXK8d?=
 =?us-ascii?Q?8Emw9l86rF716qtjJ4Ad57S+SKEksgRRSneWx3K5jVuKHrgQvOzNr9TuZ37u?=
 =?us-ascii?Q?wMnf6DYB4za8l0YKN65bjS4funOEecxxIUuPsfUnQtoc9J2elLr9pL2c0NLL?=
 =?us-ascii?Q?2EIiWvvritfAnhKFgtxD83OIgWpDviu6Zmzh9Vg0TJwPBsf+tLniz/6Iqzic?=
 =?us-ascii?Q?/TPXnPKbYd0xM1PzjwbARa6fT3wK6ca3hLm94FQHc6vfwX/szGo49j2j6oUW?=
 =?us-ascii?Q?CjzzQBH+PDvvI8PbfoCHNY1pGgJXZKC1tVhowHAebkD5Nb1GVDpTydt/yUma?=
 =?us-ascii?Q?mQdxZ5kXrEvV6u6U9tgBFT2XQPq/kPGcrUAJfOA8tSgtuv7PgrjC6WsK1nKf?=
 =?us-ascii?Q?y5M7qeyYno8892Gf7T8Po+0y+p66ehMdxJiOBa8Lq4GfnMEkg4mClCox9Drl?=
 =?us-ascii?Q?jRuZbIQHYGDcVMvsgipP3NjMGV1TIUnlTzxqTOVYnpuz7F1Vjj6TSNz/XymL?=
 =?us-ascii?Q?BwWYCnbGvjilLdU9qNrq/RFaKY6ibn5gbUjjZKmVdOGYyogYBiXzjKtktIY6?=
 =?us-ascii?Q?/i1ZLuGUOfyaD0NKhecUW0VBfxnjGc/QUN7Tgc5yMD59e9SE8UUc0gyGGjcy?=
 =?us-ascii?Q?CufzOl8xDPRPzn3WPO1E2mZ0a2XAOdoLmGxGLCrf7FVBxoyVoHeTsAB0UDja?=
 =?us-ascii?Q?SZ8iVggUHmQI40PHGSXCq4UGF6Pqk+rYTkQsUmazICxj0D6mazWbroUQTegk?=
 =?us-ascii?Q?CgX3qvIY+JgN9WSLughO1gjTa0CPcT6iHXP6lE6ajhFVKlEAJCjiHLC8ynr4?=
 =?us-ascii?Q?jEVjaFuZWQ4g0QvQQOB6bTgbJKA/mXMEm00fbaCU6/uMQCNmTLTyydupmnOL?=
 =?us-ascii?Q?sdT72cega1Uap8yFxudErYFtykHjGMOk9LVRMq05H0UwGAC31q4V+qck6/uE?=
 =?us-ascii?Q?bVadOU25AvLBOUk8m+x84rJLSkZ/c3x/ZQNUd0B56RwRZj1jivu0TVP4tgmt?=
 =?us-ascii?Q?RjzW6lE0LmtEBCQV5IzdJbGKtJkIvEN0b5wBjsz/tiyiNOzwCxwTjSKrtaZX?=
 =?us-ascii?Q?zhMiepVHz8Z/lNJMEF4NZLYl17kgeUCio67mal5YEd5OXTv8om4+0vgu/+OQ?=
 =?us-ascii?Q?DsV3p+imNAmgxO4xpIzZfLJOcG2Ss4l5D4nkbc7ZA2tUHBq4X5Svm7WyCFYi?=
 =?us-ascii?Q?LceZ24bryPbZTdij1GsWHS/zChlo/+bSe+ClLFK2hXRnorxS80tA6NuG2V22?=
 =?us-ascii?Q?oIruJMV/FPfHYH0zjB+2Y0ZUKbAxBj+Plj8ckZ2w+d9e5F8iPweua3QqnYKU?=
 =?us-ascii?Q?6bNM/eSvu0oeh9lxInC2QqdjN+Btvu8wNOLih+uN/2aOHVwRV3ssjmBsFGH5?=
 =?us-ascii?Q?tBPiANkxjg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kTUGwSQHtqmOAPbDL8sE+fI+oo52dKLQmlBzwkPZ1CJUK1HmPeAq4K6yWfizWCs0DGL2VPcgZkAvNBW3juTS0JiLaRZZW1Jsz4ppr1uJpaFiaAiAN4PJu1OIE/m0xxz5wlH8slt9aXUExU20v/nJd0hGoHhQN4/CBiNUVFMmyMlcaEhWR7lzrCYIkLFd8k5Bhk7Pmnt3rD+ANoaIgiUs7RMmTcdaMJR8x8Z2Tz9XvUcdNi8ZEBYUbHoagAFTek9ReT7SItXHF6sm8QZFvKgWFsIqFm3jl9Tjh1wqwE9IiOPGOktNRlPmVbWLwCIxZE0Cku00bgIUzhLhR58qiG4I/A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f020440-fc37-454a-751b-08dec7d85fde
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 16:42:06.8223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yvO3q8nxjErByWLfyKtUqbaQdkXM7yOFezGEak+dzlAte8p6vCTQBmXJlfutNiI3UUjWyWU8feG9+mHJHU9Dmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7387
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B0366739F0



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 08/20] drm/i915/vrr: Pass transcoder to
> intel_vrr_set_fixed_rr_timings()
>=20
> Take the target transcoder as an explicit parameter so the helper can pro=
gram
> VRR VMIN/VMAX/FLIPLINE registers for transcoders other than the crtc_stat=
e-
> >cpu_transcoder (e.g. the CMTG transcoder).
>=20
> No functional change: all existing callers pass crtc_state->cpu_transcode=
r.
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 14 +++++++-------
>  drivers/gpu/drm/i915/display/intel_vrr.h     |  5 ++++-
>  3 files changed, 12 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index a6a1da4bd98d..416dea9e0d36 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6674,7 +6674,7 @@ static void intel_pipe_fastset(const struct
> intel_crtc_state *old_crtc_state,
>  	if (new_crtc_state->update_lrr) {
>  		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state-
> >cpu_transcoder);
>  		intel_cmtg_set_timings(new_crtc_state, true);
> -		intel_vrr_set_fixed_rr_timings(new_crtc_state);
> +		intel_vrr_set_fixed_rr_timings(new_crtc_state,
> +new_crtc_state->cpu_transcoder);
>  		intel_vrr_transcoder_enable(new_crtc_state);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index e03b5daac5be..15d22de66d63 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -318,19 +318,19 @@ int intel_vrr_fixed_rr_hw_flipline(const struct
> intel_crtc_state *crtc_state)
>  	return intel_vrr_fixed_rr_hw_vtotal(crtc_state);
>  }
>=20
> -void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_=
state)
> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_=
state,
> +				    enum transcoder transcoder)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> -	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>=20
> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_VMIN(display, transcoder),
>  		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_VMAX(display, transcoder),
>  		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, transcoder),
>  		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);  }
>=20
> @@ -645,7 +645,7 @@ void intel_vrr_set_transcoder_timings(const struct
> intel_crtc_state *crtc_state)
>  			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>  	}
>=20
> -	intel_vrr_set_fixed_rr_timings(crtc_state);
> +	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
>=20
>  	if (!intel_vrr_always_use_vrr_tg(display))
>  		intel_de_write(display, TRANS_VRR_CTL(display,
> cpu_transcoder), @@ -974,7 +974,7 @@ void intel_vrr_disable(const struct
> intel_crtc_state *old_crtc_state)
>  		intel_vrr_tg_disable(old_crtc_state);
>=20
>  	intel_vrr_disable_dc_balancing(old_crtc_state);
> -	intel_vrr_set_fixed_rr_timings(old_crtc_state);
> +	intel_vrr_set_fixed_rr_timings(old_crtc_state,
> +old_crtc_state->cpu_transcoder);
>  }
>=20
>  void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_sta=
te) diff --
> git a/drivers/gpu/drm/i915/display/intel_vrr.h
> b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 4f16ca4af91f..2daba0c16162 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -8,6 +8,8 @@
>=20
>  #include <linux/types.h>
>=20
> +#include "intel_display_limits.h"
> +

As Jani pointed, move this include out of the header.
Else all looks Good to me.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

>  struct drm_connector_state;
>  struct intel_atomic_state;
>  struct intel_connector;
> @@ -42,7 +44,8 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc=
_state
> *crtc_state);  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *=
crtc_state);
> void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_stat=
e);  void
> intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state); =
-void
> intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)=
;
> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_=
state,
> +				    enum transcoder transcoder);
>  void intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
>  			 struct intel_crtc *crtc);
>  bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
> --
> 2.29.0

