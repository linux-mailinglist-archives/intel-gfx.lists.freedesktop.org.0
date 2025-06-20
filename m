Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3299AE1429
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jun 2025 08:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7658D10E209;
	Fri, 20 Jun 2025 06:46:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TAuBPOG8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDD0A10E209;
 Fri, 20 Jun 2025 06:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750402008; x=1781938008;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vL/6EsF8jsIcXEuDXKk6d045baDVyJuk7YsKm2c3ZXg=;
 b=TAuBPOG861zjd0/XSydyrFXMoKaIf4qd9xqGuiRaVWOr02LOxd/njifJ
 f9zqeZ9OB0sNF02tVPOfkqnt4UQ1Vd6RdagcdFGJupQwZ2qI2g1vEQS6s
 glLe3UgRWZWcDhbXAAskAm+pqIHI7Xv7H/b40KvS7s2IAn3AwhWswEPAw
 /8TEJuYlqHK73wELOg0gh5dtN1wreP9VsJgpmhLpEagaCr57JOUGoXHU5
 uDW/ZX4dPudgQSIiVaprt+il96totIuiRgHM6z3aVZN0Y1I/K9Mn6QmEz
 26utFOJnZ/kbo3x6MIb4dHT0uVpWqUA0zph6q0IFmjYsDbDKOdk7697Uq w==;
X-CSE-ConnectionGUID: q5BsaxWuRUuUmthI3cfuxA==
X-CSE-MsgGUID: wQ7Ov0wdQo2689TlW+IDWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="62922802"
X-IronPort-AV: E=Sophos;i="6.16,250,1744095600"; d="scan'208";a="62922802"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 23:46:48 -0700
X-CSE-ConnectionGUID: BpLn1/HWR9qx+tB25U9BrA==
X-CSE-MsgGUID: WlDZtXjiSdW6FfCHCf4WWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,250,1744095600"; d="scan'208";a="151373432"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 23:46:47 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 23:46:47 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 23:46:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.46)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 23:46:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EhWgIDtiRZG/oJXY4pGExfsUXP1nN2O6OUAK4xyv81vZSVWEcdYXx6/z3hWZM/6+iJ4RVIYGznxp53io55RQC78BliGbxZASs3ZDd+u99Z8SDLnmUIchWLEMbD69GmDUs/HUgAb5n0uF2MCPsNvFYAUwsyOSa4nRRcorzv8Kp9iD2Nm7IU5iYnfIkYhxX94VwVc4gTwyW99zuQSTWQCUEbsMAkijyidHrD8l5AGcHhdCyL49jfstaZ6Wu1wofwGib6ajSMCJdxCydQyBP22lo8Vui0K8QThOu34M0K0ThwLeSIH5YAuwfLWr9KSZxgMHdozLvzjvGRWAMJuTauoptg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QEdq+grFvSqDwBhocdpM0lJYMQgVCjxUq1CDK12ptd8=;
 b=TW8uXtMUJZ/60AWo31JU4GI6Ue7GUhR1RK3dRNc92CAzJwInjiw1oK+/BCttfMHpl+FvYx4EJYsqF40jxxQvdSJczQfINgJKXZbfmZpvEuySB2SxO6IaB/ZhT6ThH9r52zebvClcgLktwiQNFP7aT6AKY9z+8fD1qH9zkdqzSKl1qmyBOJW7EhGvsbIXys+ZdFgxm+TAzUStgDgazes+baZ02vCbj4uhguKxDp/viXLD2TsZb4UnicaNPZrCm2yd5T/pycyJjXsIwpWf3JDAK5hnaCv9uVmPjJL4buljyhDAs2pUapwFkVajlo8z3Ikb+lJjJqjqNlvb7BR/7QGpVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7707.namprd11.prod.outlook.com
 (2603:10b6:806:322::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.20; Fri, 20 Jun
 2025 06:46:26 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%5]) with mapi id 15.20.8857.020; Fri, 20 Jun 2025
 06:46:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Thread-Topic: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Thread-Index: AQHb30JnVWScphBBzkyb034NdZnunrQHDeiAgASQY+A=
Date: Fri, 20 Jun 2025 06:46:26 +0000
Message-ID: <DM3PPF208195D8D92F89D54C206AAF5F552E37CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250617044305.3079459-1-suraj.kandpal@intel.com>
 <fe5e1c5c968aaa9667a303981c45486c07291bb5@intel.com>
In-Reply-To: <fe5e1c5c968aaa9667a303981c45486c07291bb5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7707:EE_
x-ms-office365-filtering-correlation-id: e9c98c39-9fb7-4387-9d7d-08ddafc62dc3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?p9o8aD1gUQB54k9/Qnu6bP7CT8Kkz/vsUNJGJlA6KZFbd6iXDfQqbtbBMtPY?=
 =?us-ascii?Q?5talHRTmzHIdKYur5KTWHAFji1G7U1ZZ4iQhuQBLmniZ4E3WxHe6mvdRUhLh?=
 =?us-ascii?Q?Qjq4xeFfNPOrTfZ5i9g0T5MfBKPYUqThCLDqb4UEhsu5JKLsuZ20RCysdC53?=
 =?us-ascii?Q?6luRzl9hkNyNVc6bkXtFDX7Ox1sZPfefXajMBra5Rjt2CpY/QanG7hhBnVWR?=
 =?us-ascii?Q?bX1VmJ3eM7yOL3kqX740jZ5HpJqKIhuv2nSazIt8VPH/DKEDMPUWdUpiK1YV?=
 =?us-ascii?Q?EsktiBTRjKlF3EXxVuFtc4yxQZecRyja2DUKgchAd+R8I23/83lKn4kjD8b5?=
 =?us-ascii?Q?ra2bMyBECvnLb1Er9sUnHC/eBxcKBeZ7oxKQUDa00OzTh/vi5xgsBW1IbUkG?=
 =?us-ascii?Q?3B2+w3+Lnkfr5/ffeoz/ttSZZeR5DrY9V1qm5WKoqD2VTpLlarg/6VBVpPp3?=
 =?us-ascii?Q?zX10SvvpBP8bKbMfw9xDYCrG9uYddHx2ShWgjfdywt+r77kEahCfOhl+LnDz?=
 =?us-ascii?Q?Q9RwTZKXjKMSvlUTqXL8oo1Jffl9W4H1J28rln04qG+UAZ6gSZ2MpfCJt5qc?=
 =?us-ascii?Q?hrR8rBFLAj3loJFNraX0MywVfnqtvWytjv+/52zDCk8f+0kuYNikYmQmB2Nc?=
 =?us-ascii?Q?Ogrha85jjBWJw2Ot4XyaT4wBO3h7VsH5WgtvBO9K94CZ7notN8cLsHj0gqb9?=
 =?us-ascii?Q?1xzmawW933xo4vbxRFo1yo0iyk0tXNz8qV8hLxhdzQ5X/xnFbnmTh3qkc9t0?=
 =?us-ascii?Q?PWHBbMsWasxaTMrD0jNwUjX2NfcAIRLgTPtHwST0Pks/6GFeU4DKu1d5eN3Z?=
 =?us-ascii?Q?Q1QDHAweQKmjWuL5+McXUOMBB+AxpQBUYrUg8HmfzdQbC5i3BQ8kDcipF9Pq?=
 =?us-ascii?Q?0PC8+iZ35P53Um2ZP7bia0MMjC7Mnmw9q6SXWUUhFfeOxlzeMyK2aMbRFVFM?=
 =?us-ascii?Q?g3JOIsCJ+Jut5r++YnG76lCuuF/WnCGL0CRVhiU0okCBiXj3Uvm9SSsIZJV4?=
 =?us-ascii?Q?vGbw3qaYOMUQoABJXhUn4Rd6meILVYnV60727WUu8wmlCM6CnZC/VxdGdGMW?=
 =?us-ascii?Q?imEPfLhq8/Dbpyayyoo7gCxDRs0q9a4V36+VfKlyfB8b5z5yeGE7cvbugnLa?=
 =?us-ascii?Q?wWluqyXCak66TfJZpvbdDRo3Hcsjr4Crm5DcqlQ5bFTJ3k1uRgteFHO5rvLc?=
 =?us-ascii?Q?kqpd85yoLA6oAdbaA0LwJnIpgTmDees4A13B0wRNIfvuSaUPzX3wX9J/RtDN?=
 =?us-ascii?Q?rSnNgtK5jTARTMrkYPCHFosj8KU00azcUYeVeh3KjlpSu2TjtODog73bs1ml?=
 =?us-ascii?Q?SNulzi42QklpD1LXucqYifcoDxz4o7WcQVhVE8fyabYzbGx1nC+5huW6q3C0?=
 =?us-ascii?Q?RCSQ6iKIdd7Iy2YLLvzV8uhJzdWOdpp9PrKt5qfKtW5vTfug9aUIPb52n7VS?=
 =?us-ascii?Q?T0h3A1u970Fcmt368z+eoDNCiBqUi9koT1N3fPmCJDO3rxdJvImKG6qBsvat?=
 =?us-ascii?Q?uOItp94nj3x/LU4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BqEv2LZpyMkiaOUkCcjogEOMCym/m1a37Q40ezigNzPyxzUhai2LKF1oOyav?=
 =?us-ascii?Q?nM3unxlUNUJuWWy++7GCOIjRkqcu8dHM1YJo7EoRyO3dclKCYsTyR0twQlz5?=
 =?us-ascii?Q?8SlnvLQFlhQJkpveFP5Z3bH0W56m9uPstpG+X4gEWcZpiCOg3T5T1BbJQXfo?=
 =?us-ascii?Q?igbjiWaHod+T/OAtF5VFcGdKyEJX8RvIef0bNDy/lMpiUZgKqHgeojtPzUIC?=
 =?us-ascii?Q?HkNyM6epWGWcgaRDmTgTM/uSEVUfjrtzzVUPrlOf9pEsnXS5yZjIFsz53J5V?=
 =?us-ascii?Q?CXzxzPPUZMPJoOVK2g2XZ5IA2O6Mib5BtorZ+YQXVVvpe5ZbuVXvEMDOcCcV?=
 =?us-ascii?Q?RM6SUNp7YfZpR0NEBERvl8wfPAVlMsCK6glB+I3El/+j7KXYnObGDAcMP9G1?=
 =?us-ascii?Q?vJ4jjce7XAEr680ykzN5+oiLuLtEHhxMjAD17aP4pMlJfGWjWo802iwE7gvO?=
 =?us-ascii?Q?egdl4rQ+VHLEnZp0GqKdEExHpSlp5Oow2APWFbhK0AdCkrIaB1BvMebY1h3G?=
 =?us-ascii?Q?EpKJMLTzcl0DyRSeQ17SHfbdITuzNqF31ClcYmrMu3IEjGgJJIL2dVusbWCF?=
 =?us-ascii?Q?rzFJS0iQfr7tFxS6tmiYBn967/GNbE+/vxgtRvRou/mXZt/gZU8uafyJzfdK?=
 =?us-ascii?Q?2RlcXzwiKzDKNPbSpZAYtFX9IuuVaGATZyITHFuGE3v77gf3WyknL0qKezzH?=
 =?us-ascii?Q?kyifV47Pkt/ALBtaNB13APrZihci2dLkVNMciNPxaD739w3zJ38KGEbooDVt?=
 =?us-ascii?Q?aS40dV+QQZpnxV0UVF7QJ00czaZ41Tf0rd+eUkOVkXNDoeu40SOJeNhy9AMb?=
 =?us-ascii?Q?nd7eZeob8Ym8ef8y2V8WpL1tJ92DCNvgn6J7Qo+DtBGM+vaVEvYr2ZjfdQsX?=
 =?us-ascii?Q?Fyjl6efAjpS+B6q6a5Mh4ulO78yOgPddTolrKlYDlP1JhQBKgjAIk0Sfr1Kv?=
 =?us-ascii?Q?mSeri6MAe8vo1sg1jLcEgl27S81xbrZh05rZEuHGG4o0I8pEu5IAY6NoxHMu?=
 =?us-ascii?Q?KJ1GjiFe7Uaryrl6PcnbWRibZDVBmsx+Awiv/ZqZ7zfRU1uWOFCu3etdzjAq?=
 =?us-ascii?Q?ppinHuwyqEZV5iWeua4jJCwjC2c7cI7UiSUj5AdjHNcJGLl6CF9Lq6EBYuZ3?=
 =?us-ascii?Q?CuhCljckMlKHyGRt1jUVs3VFQHlcb72tbUfI8eI2mXWey6Sj/nS80XqLGHXn?=
 =?us-ascii?Q?BPS+EsIGhmt5Hv7ivGfF7r2fxwNJspIC+6MO35cd0IPIxWGzdLL8sFXgbC+k?=
 =?us-ascii?Q?LUMWk8E8/rycLV21acXCgfub67fv831hKxOPnlWFhNIz0l7tjYwIMho0+yN+?=
 =?us-ascii?Q?J85mJg3EQkewEbuQwwWrdMgDWQzMI63do5vu42oI0W0LPb/pXvHrA061MV6s?=
 =?us-ascii?Q?PcTnAgfTskjEyKN96Vrb+phfi/luZt25eAZtkD8/elyLvkHzmy7Fczfs5BWV?=
 =?us-ascii?Q?/9bQE5PpygeYzZhavWvwpr3VbNccHW2pVteuaVPj4kC5TQfDyQzOucfTE/Gp?=
 =?us-ascii?Q?LQrhschq6i+CizYFv115ABxR5Dbj0pOnfQISXgUrwDI11XoFDYxeowSZ9k3t?=
 =?us-ascii?Q?Rk5HrgpZjUSoH5AwlwdJWzr11jaGocoUSKpkuQIt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9c98c39-9fb7-4387-9d7d-08ddafc62dc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2025 06:46:26.1903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tqQiZo1GYndeEE94GwovJS8lRw5TkgHr6TZTQr3G47BzwHRNQPiDbTa7AlUGewyYIk0ysnLyMsfu/InW7shSgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7707
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, June 17, 2025 2:30 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: Re: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
>=20
> On Tue, 17 Jun 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > We only support resolution up to 4k for single pipe when using
> > YUV420 format so we prune these modes and restrict the plane size at
> > src. This is because pipe scaling will not support YUV420 scaling for
> > hwidth > 4096.
> >
> > --v2
> > -Use output format to check [Ville]
> > -Add Bspec references
> > -Modify commit messge to point to why this is needed
> >
> > --v3
> > -Use a function skl_scaler_mode_valid which is routed throug
> > intel_pfit_mode_valid [Ville] -Combine the check conditons [Jonathan]
> >
> > Bspec: 49247, 50441
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v2
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c   | 10 +++++++---
> >  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 +++
> > drivers/gpu/drm/i915/display/intel_pfit.c | 12 ++++++++++++
> > drivers/gpu/drm/i915/display/intel_pfit.h | 12 +++++++++++-
> > drivers/gpu/drm/i915/display/skl_scaler.c | 18 ++++++++++++++++++
> > drivers/gpu/drm/i915/display/skl_scaler.h | 12 ++++++++++++
> >  6 files changed, 63 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 277b40b13948..7af936e6ea46 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1418,6 +1418,7 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
> >  	struct intel_display *display =3D to_intel_display(_connector->dev);
> >  	struct intel_connector *connector =3D to_intel_connector(_connector);
> >  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> > +	enum intel_output_format sink_format, output_format;
> >  	const struct drm_display_mode *fixed_mode;
> >  	int target_clock =3D mode->clock;
> >  	int max_rate, mode_rate, max_lanes, max_link_clock; @@ -1451,6
> > +1452,12 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> >  						     mode->hdisplay,
> target_clock);
> >  	max_dotclk *=3D num_joined_pipes;
> >
> > +	sink_format =3D intel_dp_sink_format(connector, mode);
> > +	output_format =3D intel_dp_output_format(connector, sink_format);
> > +
> > +	if (!intel_pfit_mode_valid(display, mode, output_format,
> num_joined_pipes, &status))
> > +		return status;
>=20
> I think all _mode_valid() functions should return enum drm_mode_status.
>=20
> This now returns pretty much the same thing in two different ways, and
> leaves status unset if it returns true. That's not a great interface.

Sure will fix this

>=20
> > +
> >  	if (target_clock > max_dotclk)
> >  		return MODE_CLOCK_HIGH;
> >
> > @@ -1466,11 +1473,8 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
> >
> intel_dp_mode_min_output_bpp(connector, mode));
> >
> >  	if (intel_dp_has_dsc(connector)) {
> > -		enum intel_output_format sink_format, output_format;
> >  		int pipe_bpp;
> >
> > -		sink_format =3D intel_dp_sink_format(connector, mode);
> > -		output_format =3D intel_dp_output_format(connector,
> sink_format);
> >  		/*
> >  		 * TBD pass the connector BPC,
> >  		 * for now U8_MAX so that max BPC on that platform would
> be picked
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 9961ff259298..53ba1e16100d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2053,6 +2053,9 @@ intel_hdmi_mode_valid(struct drm_connector
> *_connector,
> >  	else
> >  		sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >
> > +	if (!intel_pfit_mode_valid(display, mode, sink_format, 0, &status))
> > +		return status;
> > +
> >  	status =3D intel_hdmi_mode_clock_valid(&connector->base, clock,
> has_hdmi_sink, sink_format);
> >  	if (status !=3D MODE_OK) {
> >  		if (ycbcr_420_only ||
> > diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c
> > b/drivers/gpu/drm/i915/display/intel_pfit.c
> > index 13541be4d6df..a8fb92c3417a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> > @@ -14,6 +14,7 @@
> >  #include "intel_lvds_regs.h"
> >  #include "intel_pfit.h"
> >  #include "intel_pfit_regs.h"
> > +#include "skl_scaler.h"
> >
> >  static int intel_pch_pfit_check_dst_window(const struct
> > intel_crtc_state *crtc_state)  { @@ -546,6 +547,17 @@ static int
> > gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> >  	return intel_gmch_pfit_check_timings(crtc_state);
> >  }
> >
> > +bool
> > +intel_pfit_mode_valid(struct intel_display *display,
> > +		      const struct drm_display_mode *mode,
> > +		      enum intel_output_format output_format,
> > +		      int num_joined_pipes,
> > +		      enum drm_mode_status *status) {
> > +	return skl_scaler_mode_valid(display, mode, output_format,
> > +				     num_joined_pipes, status);
> > +}
> > +
>=20
> Please explain why we're adding the extra dummy layer. Do we expect more
> to be added here?

Its so that it has the same level of abstraction as intel_pfit_compute_conf=
ig
As suggested by Ville

Check https://lore.kernel.org/all/aEchEa8p0bIKXMJa@intel.com/

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
>=20
> >  int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
> >  			      const struct drm_connector_state *conn_state)  {
> diff --git
> > a/drivers/gpu/drm/i915/display/intel_pfit.h
> > b/drivers/gpu/drm/i915/display/intel_pfit.h
> > index ef34f9b49d09..ce68ceebc700 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pfit.h
> > +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
> > @@ -6,8 +6,14 @@
> >  #ifndef __INTEL_PFIT_H__
> >  #define __INTEL_PFIT_H__
> >
> > +#include <linux/types.h>
> > +
> > +enum drm_mode_status;
> > +struct drm_display_mode;
> >  struct drm_connector_state;
> >  struct intel_crtc_state;
> > +struct intel_display;
> > +enum intel_output_format;
> >
> >  int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
> >  			      const struct drm_connector_state *conn_state);
> @@ -17,5
> > +23,9 @@ void ilk_pfit_get_config(struct intel_crtc_state
> > *crtc_state);  void i9xx_pfit_enable(const struct intel_crtc_state
> > *crtc_state);  void i9xx_pfit_disable(const struct intel_crtc_state
> > *old_crtc_state);  void i9xx_pfit_get_config(struct intel_crtc_state
> > *crtc_state);
> > -
> > +bool intel_pfit_mode_valid(struct intel_display *display,
> > +			   const struct drm_display_mode *mode,
> > +			   enum intel_output_format output_format,
> > +			   int num_joined_pipes,
> > +			   enum drm_mode_status *status);
> >  #endif /* __INTEL_PFIT_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index d77798499c57..27001b52daf8 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -134,6 +134,24 @@ static void skl_scaler_max_dst_size(struct intel_c=
rtc
> *crtc,
> >  	}
> >  }
> >
> > +bool
> > +skl_scaler_mode_valid(struct intel_display *display,
> > +		      const struct drm_display_mode *mode,
> > +		      enum intel_output_format output_format,
> > +		      int num_joined_pipes,
> > +		      enum drm_mode_status *status) {
> > +	if (num_joined_pipes < 2 && output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420) {
> > +		if (DISPLAY_VER(display) >=3D 14 &&
> > +		    mode->hdisplay > 4096) {
> > +			*status =3D MODE_NO_420;
> > +			return false;
> > +		}
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static int
> >  skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_deta=
ch,
> >  		  unsigned int scaler_user, int *scaler_id, diff --git
> > a/drivers/gpu/drm/i915/display/skl_scaler.h
> > b/drivers/gpu/drm/i915/display/skl_scaler.h
> > index 355ea15260ca..37c6543b4731 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> > @@ -5,10 +5,16 @@
> >  #ifndef INTEL_SCALER_H
> >  #define INTEL_SCALER_H
> >
> > +#include <linux/types.h>
> > +
> > +enum drm_mode_status;
> > +struct drm_display_mode;
> >  struct intel_atomic_state;
> >  struct intel_crtc;
> >  struct intel_crtc_state;
> > +struct intel_display;
> >  struct intel_dsb;
> > +enum intel_output_format;
> >  struct intel_plane;
> >  struct intel_plane_state;
> >
> > @@ -32,4 +38,10 @@ void skl_scaler_disable(const struct
> > intel_crtc_state *old_crtc_state);
> >
> >  void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
> >
> > +bool skl_scaler_mode_valid(struct intel_display *display,
> > +			   const struct drm_display_mode *mode,
> > +			   enum intel_output_format output_format,
> > +			   int num_joined_pipes,
> > +			   enum drm_mode_status *status);
> > +
> >  #endif
>=20
> --
> Jani Nikula, Intel
