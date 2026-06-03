Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JSGZIl45IGpGywAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 16:25:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E17256388A4
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 16:25:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=OGDnBzN0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E2510FF08;
	Wed,  3 Jun 2026 14:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 971AF10FF08;
 Wed,  3 Jun 2026 14:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780496731; x=1812032731;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=dk9SeegfnBDwFBdl9qAF2audFqSYTkCyi34JBbgbLYo=;
 b=OGDnBzN0N/aFRzF/osqp/ZTtKQrZJUzLu/h0RnYU80sdh5F8qmQAjL/u
 GKHyhNNI3O0Av82+KpJE0tc5mHMgkaUQdGv9OUaXTvcV86RSYKwAsQNM4
 50GG/KIInXPqXt0GCsmcL4abHLw4tPvmQ+ZwU+zNxpqS99oCnAdmXxYtd
 Wut56SUlXue4GB9W5X1mh0gGs39r/0EwZy6RehpJCLHShsVW+J+evnyjY
 CcqX8E7kCJHZDV/D7G5R3pRXbH5MN8KCvRy/oqc46gKFZKHtej/7WD00s
 ORNfRyxMLMoef8AFSCe3VqQjlKNbQOqYcJCCagaWQJP/4OoEwcYcpuTdO w==;
X-CSE-ConnectionGUID: pacUnr09Sf2bF5AW+WyCaQ==
X-CSE-MsgGUID: zL7bN/TPQfmdecAl+2ZY2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="85196466"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="85196466"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 07:25:13 -0700
X-CSE-ConnectionGUID: gePRYLYQRZm4RAqwcOhZnQ==
X-CSE-MsgGUID: ezfgRMlfTaiquo2cR6W7Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="241756550"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 07:25:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 07:25:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 07:25:12 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 07:25:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ozd43mApqmGLk8k9ugXBYc7rM9G7goJNiNg6Y+FapsaAn1K/vQ0Pz09JeU1WGWKmyn2m5Quh7Kq4+qWD7grZqHxYDIc7ArOUcKNxM8BXpc57Uonn1rKiNX180JAAxALQ8YLIR2s/gOr6XgHGY5wrjGBsGIjiPmKwyEXtXX/0Fd/iXezTVgtQisaK2GREopiyvBrnvD7IMe0PfqteBLe60L0tc+6XRiNU06ZqKyI0ioGekNxOP7khcHE+AnyLqHUE1BF5hfldwKsB+aB98nHKeGjXn3/xPrS0OZ9/l9AGZ0VzGpXquXPFoOF56MWaSP11KG5sLH+qO/U/eewrsW3GNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cLnE49jCCuGbFwhRb4ivyGa1a8hGVjjIu9u4/tGq13w=;
 b=rf2kVwyEtEztKz6Y6r7+RwjsGpIflkQFohW9xpyv+NhctkT38ZIoPj+++hkWx3z/JrPC02M1kLuBMRAic5v3Pjd5B2dWoezGt6DqoOaOII68vyDhyg6hR8rjDAxGWLEMdK1H0IBva/XJBy78rTrfNQLzMqeLZ/1yunVT7cns9bZd1A6rDYHGRCOYJIg+c+grjOb2bHLqXXzIHvnVLE6FJeWBgGQno6jVsDSUg82v276ISaSgic3w6rAKPJoREYBrp+nWqWMegkoa3vFzzlTzKZ8I0smw26Ef12m/BwZSVuzBP12ChWDXtAAY03FVPVGAZPlbyg/fG4Ag7ZgJKopzXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ2PR11MB8513.namprd11.prod.outlook.com (2603:10b6:a03:56e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 14:25:03 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Wed, 3 Jun 2026
 14:25:03 +0000
Date: Wed, 3 Jun 2026 17:24:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?=
 =?utf-8?Q?ure_for_drm=2F{i915=2C_xe}=3A_displa?= =?utf-8?Q?y?= (runtime)
 suspend/resume/shutdown unification, part 2
Message-ID: <aiA5ORKjPPJlwYcM@ideak-desk.lan>
References: <cover.1780389001.git.jani.nikula@intel.com>
 <178039485806.35116.2101469529268890207@6beec6c84f66>
 <9299478799ad973d4e1f9467fedfec2d2e8e92ef@intel.com>
 <05a8062a90d7746e9c4d693601a407b157ce1d22@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <05a8062a90d7746e9c4d693601a407b157ce1d22@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00023A12.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::20a) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ2PR11MB8513:EE_
X-MS-Office365-Filtering-Correlation-Id: 91c75e5e-f51c-4859-346e-08dec17be70a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: 8zIjP7L/ix8Cq8ph78EbKRZJaGboEIKkp0PUvWYV94PdD7RomNaM8SHZZr022xlKGJe9Tf/oX78isyskRwd2rQxPgcBwtIIyBx5Bs12YZwkjp9JLCYPFX03OQz1dCHUae4V+xGTOEYBiD0L1wq58hIEVxskGOfEh9h53VAPIumYF5lreApV6iJKGQUBv/BH3YQyaZ7LaTruOIxLdAlyzkDQhij67zKkw0RG3v4eMHQlZPlb1Sx6AtVwTWYSqh90bSAZDXdxx8gBqngDUwLEHk7+OrJ4bS3XmliO7RBYEDuSb5qOz1Jgo7UjraZbsbvzJW8Y6U9JetxmWE7+sna5/LSzfmL+EiNQ7w4IR7/GUA3AB8Re6Kyh9251NYVIdTJWgHPX4Rf8OeosWeBO0IRJi0W0va17Lp1+LFuqYtsSZTKT7gfOPuZcZmIBWX3nTz985uoHLD8au7j88UqClptFzjAYIS+B5HuqSY4yfsErupJICh/23A8EPKdQH+leajxcsw19/d3eGTYS9DHs14/cymD2vLMDCIIU2QsaxGfeSndplJgEsTeIz5fyjZv3M6O1UHhTNv5pdU0JxqmVTKrRPPbkHZ2RVjcnzxS19JH1kbJ9dCV29bElffPpte6InRTghPT07T8a4g1P9qZlvoyoG5CeOohKquQ0wfEPmMeNwDRhn+NapHL8mbI75Nwco9+f+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DtDOXq/QAkwf587gD0wNH2KusG0QROjJ1/tFnGVvEYLkZiv7bxI+i/QzE9vQ?=
 =?us-ascii?Q?kDVqBgpoKYuwTJzPocTbR6+ru6sj3xZMEM9LwPtcSM/xImUY6xN8/5xIf9Ud?=
 =?us-ascii?Q?eDG7piJBqGmUct+D9dMEc81mFQD2+8phiM8LdSVCZGyaF801noo8qD263WDs?=
 =?us-ascii?Q?jvtdZS0CPRHHz4p3VIBSPmJgufx/MHy/eGkDfIX4pyjkdY37XrOD73SaTlM8?=
 =?us-ascii?Q?S8+DIKo9k4LUIZWUBUGEhNOUnYXh6WsJ3Jdiil0+aWKhp2KVweZuXOxImeNA?=
 =?us-ascii?Q?OfhasDzLCjj8QNixmgk7z2yiCavnqGityEbD7ulfR6H/wNKgBIslZGtNQzrI?=
 =?us-ascii?Q?+VdMy5gqnXuPBcUv6ZJpdnrv9MTpV5sArXzd+Z3LfGBVG/aK66PFSjGS1Qie?=
 =?us-ascii?Q?TrXmJeZMOTUDhV10Qw7E6DqdcZyBY9M0M/wWAxLicVDZ8qMFBhHh+CVk0RqO?=
 =?us-ascii?Q?i4ROERC1hgRmjlys5jtTu7bNue2ZXhreXMeN1oF244JObSE//EucF8mD53Rk?=
 =?us-ascii?Q?rZRBwfegsBtw6/3SSo+BsTk8tNIFFflaceSzXap5pXcvF5nNjJee4joE8gpb?=
 =?us-ascii?Q?/1YOrbR8sSrJYYcTleADhS+rILnktIhTbqkSh8ccM+hCUvNXL+VynkhOjska?=
 =?us-ascii?Q?Bwxa7vsZgOxJzU/QyR2mhmEDLy5FA2XMOA33p3MxrDiJsbccsp+x1kjVsiD/?=
 =?us-ascii?Q?K4DwL9PkDCJblB6POVYp++ASW40X4mX038ZByderw6YBP1P1rfqbqmuBdoZb?=
 =?us-ascii?Q?gDCzffa11Zz6x1L9nBZqswI5VYPD1TsoGsPPklwCbhPoXXkUImaLhg+MliQG?=
 =?us-ascii?Q?iTjYUB87MjD2MNUv4vL5c+CpYSqYCct5/R3JR3MMK9jHkW2FQ0wJQXnUsc86?=
 =?us-ascii?Q?T99pRHu4VkIVYQKc0Ad4j5OZbyopzduXbKA3kRPWK/tWVIoePIOXD0xR/y7q?=
 =?us-ascii?Q?XYGttzK+0sDKwAqzx3rQIroYIjFL9URN9hfpC/9T3lS0aE2IR/Bh5yY1wIaU?=
 =?us-ascii?Q?xMlkNWmdK/5BiE6LomrlgnFb5SbqKq6zWHx1ACArzR9PKFQqwuk1/Sw46EMt?=
 =?us-ascii?Q?9uQTt9CCB1EaMi81ojNWds01IzpB6Dn7E968R7X3MYPSrWw5Zo4jgao3Upk8?=
 =?us-ascii?Q?9kYWhbpY2+ghnDJ87mXFDV0gUCg7c0vMGYemvBU30t2G/1aRk5uFle+C3xb5?=
 =?us-ascii?Q?Bw8fTFvn1jVzzX8UgtyeIDWJN7AKRGA6wtFhnyzJFdwxZe2n+2MmarcXt3xY?=
 =?us-ascii?Q?Vz55sgmPQZ5ZoqFt2l4V0OMXL9w33+26pG1Rn/9z+Jup4ecpUnBSeeXLGNMP?=
 =?us-ascii?Q?RltNFd38SApWYw0kqrtmfVJnOB7DPLApNcca2Ujf/AxuovNhnobsc2oL5aV9?=
 =?us-ascii?Q?MfuVn+5Ed5PPXejd/R5UDODzW6EUsBthlJPQpqoMywDSYSZXcfU1SDsvwDCA?=
 =?us-ascii?Q?Ir8/Qzrk/nENY8BTcMXMjMynsQB5ZsVqQme4S7haSUEckARMlxyNeOhwOayX?=
 =?us-ascii?Q?+W8dwWy7I05YNIeuj9BjlAR92hwhimFJofKbGRu6qMnVapSL6lv+2izafQ26?=
 =?us-ascii?Q?m7WtDsricq5NHiDmbf1wKsDa7vLIalic3klV6qMx7i3GBpxvW+NpzT39PY0S?=
 =?us-ascii?Q?DXsdUw5xLT4Q+enpK0srCt+1NQJxrKzc61Pph735gYs1gR1rxoV7Z0gTktVn?=
 =?us-ascii?Q?pn3C50PWlxqxmwe7FejPUFKf3FpUCMid2eU5Nup/zrklAg9OqOni6mpmdelX?=
 =?us-ascii?Q?9dt4uP0NlA=3D=3D?=
X-Exchange-RoutingPolicyChecked: pRE0luMGQMEXmrvoDychuDhAB4WMiZmQQ9sQ1ywQcV/MZw98Eq74r5pL0LisgNm/zz5WYZz4SGrtzE2fqgJlKEGevQ8PgBNmy2VWlUO+QSGuQwZgTu5feTzcQ1sJ7PgTow2Y8Jlj3Ur91xw10zWiHCjsg5+7MSfNWlWcpVhYvV48fMgMQKKgFGX9EZNIFhnhX5wfqftwW4HjI06/odi70Zxc1YaUt3pjTRfZPyV9ReE5S/7LhGkLyJw+N4eq/WwB3fi8Vsq8bTbH3ufaty1OoCyYzQwzvDe28hkpD67UI9U84K69DF8wcVf2RnGta5JHV8Unb/1+UUOHrMrbneQ2qA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 91c75e5e-f51c-4859-346e-08dec17be70a
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 14:25:03.5766 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZqrSIBGv44vOaIfwQBKgKTgnZ5BYAmdXJ+PidnmT+/ld6+qvyMP0elNU2SEckRbaj0cGu+WZ8rIs+jSozeb1zA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8513
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: add header
X-Spamd-Result: default: False [7.49 / 15.00];
	URL_MULTIPLE_AT_SIGNS(6.00)[3];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:from_mime,intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,emeril.freedesktop.org:email,01.org:url];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E17256388A4
X-Spam: Yes

On Wed, Jun 03, 2026 at 04:29:19PM +0300, Jani Nikula wrote:
> On Tue, 02 Jun 2026, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Tue, 02 Jun 2026, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> >> #### Possible regressions ####
> >>
> >>   * igt@i915_selftest@live:
> >>     - fi-bsw-n3050:       [PASS][1] -> [ABORT][2] +1 other test abort
> >>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18602/fi-bsw-n3050/igt@i915_selftest@live.html
> >>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167725v1/fi-bsw-n3050/igt@i915_selftest@live.html
> >>
> >>   * igt@i915_selftest@live@hangcheck:
> >>     - bat-arlh-2:         [PASS][3] -> [INCOMPLETE][4]
> >>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18602/bat-arlh-2/igt@i915_selftest@live@hangcheck.html
> >>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167725v1/bat-arlh-2/igt@i915_selftest@live@hangcheck.html
> >
> > Imre, Ville, any idea what in this series could cause this? Feels like
> > it could be a real regression, but I can't figure it out. :(
> 
> Passed on the next try. I'll optimistically think the first try was a
> fluke. ;)

The Oops in __drm_mm_interval_first() on fi-bsw-n3050 looks like an
actual driver problem, unless it's a random memory corruption due to HW
errors. I couldn't find any previous instance of this Oops in CI runs,
but I also can't see how it would relate to the changes in this
patchset. Since these selftests involve a lot unloading/reloading of the
driver one theory was that it's due to unproper unloading of the driver
after the test preceeding the above igt@i915_selftest@live test
(gem_migrate), but couldn't see any proof for that either and not sure
how such an issue would cause a memory corruption in the reloaded driver
like the above.

> BR,
> Jani.
> 
> -- 
> Jani Nikula, Intel
