Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E303AD416E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 20:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AA5F10E2A5;
	Tue, 10 Jun 2025 18:00:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZci7Kd9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0166410E121;
 Tue, 10 Jun 2025 18:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749578456; x=1781114456;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S91KQtF+otSqW4XnDRLWFdE28PnkRQuLMYsbiwiM7dI=;
 b=LZci7Kd9T9ngA7FRBjfJFWS1HxrpkmF4gmIKEbXSVIVNGfuUwjWDjL2R
 hlKSqvJnHj1Ww+k3vszTypiddx5/9HTE5vzsRAjQNnfu9JSlHAWAup1RB
 ikMVoq/x1CQXloZou6/xQSOMOmF9LbCJs6bws6+Fw0NQaZfMkKILdZnL2
 OJ6/BI9fgQE6fK4brzJ7eojsHTn5zmW+B0jhlBHfMkLdnIoJCY+Su0qMR
 K6217gbIfjlc/6s58H8ouNFNXCmM3w25TcDCHWI6Vwp74WzcH0lfpm0It
 1+B3UWwvjuaiEF8ywEPoJ40KcQ1DmBZL1O9zCRiBbOlG5pcokzLCATdV9 g==;
X-CSE-ConnectionGUID: jfxRG6dSTd2JZANnVM1FOg==
X-CSE-MsgGUID: 4oBmChRDSyW9eZ10nKly5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="50928861"
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="50928861"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 11:00:54 -0700
X-CSE-ConnectionGUID: sUVzhQLeS32EJS25ogXwSg==
X-CSE-MsgGUID: n1uyU+0cTk+7xKnAilAp4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="177830953"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 11:00:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 11:00:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 11:00:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 11:00:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iH9Dk4WOjvj2KKXei5LVpg4l+COAmzv3jkLKRa+mH2UC7yfQGx65CHGYi4wakVNAiPr0Y6Iz9B0FSlyyLjSUEJLhe2s/rN3ktbpoOy5Ta3PQbwh4AC4eQLisGpLwwz/m3YNuWkVaw+8NcHI77ftzEJ5tEvZrvyxMCYtYCcQIgEYgeXVjF+i1BW2RrkZ3X7L8Gx/yUhwKsgiB6wQjb9Ks52vg526PeW+9VmFLt9WfqXJhKLeLNKnF8efd9WE57LFF2aJIK//QSY7DGmGAxXwAS/3YxNS1GTXeetp0PntqqjmGgyyDqM9SUH9tEP6nrjfLNOuj5HQTxTL7nxoXOrPyQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=27H/bKLI7EvZCUtXxpxd3XsEnLUWxz6DjZsscPLObIg=;
 b=BSeM9XujdCpsI/brSa8YUk00pziQuWUIAOxsRamoWhmNH+Prd6o5muNvBLi+ACyZt5CcKBxbfBvE4PDezHtbKmKsJPBOTuXX+B6uo487O0QmjLS35pE5mZxZ4IscGCzo1codyaQwqScdqzStCo1fjjo3gqqMSlNt3wuWE66FKJAVmqs+eK/2pZH8gtFrz9XEEmHCrvj2ZxXDktC/d9mPYm/2yxDadmrsjpbjZKXwNRS7guDGXfPxHxuz6pxLI/pZ4ZqlDCUXLi7Tq99vCQyeVUegooAXYRgaArci5aHx2gbcPoJipwC6T82kuKg+1UUqHl7zhZ854TH+pAj2mGkZ3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5062.namprd11.prod.outlook.com (2603:10b6:510:3e::12)
 by SA0PR11MB4543.namprd11.prod.outlook.com (2603:10b6:806:99::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Tue, 10 Jun
 2025 18:00:49 +0000
Received: from PH0PR11MB5062.namprd11.prod.outlook.com
 ([fe80::4e95:2cba:b36b:6f50]) by PH0PR11MB5062.namprd11.prod.outlook.com
 ([fe80::4e95:2cba:b36b:6f50%6]) with mapi id 15.20.8813.032; Tue, 10 Jun 2025
 18:00:49 +0000
From: "Grzelak, Michal" <michal.grzelak@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 0/2] drm/i915/display: register include cleanups
Thread-Topic: [PATCH 0/2] drm/i915/display: register include cleanups
Thread-Index: AQHb2TU3GkLN7/iX90u7iV9YJ9d8wrP8j+Tg
Date: Tue, 10 Jun 2025 18:00:49 +0000
Message-ID: <PH0PR11MB5062EED5AC7326D84984EEBF8F6AA@PH0PR11MB5062.namprd11.prod.outlook.com>
References: <cover.1749469962.git.jani.nikula@intel.com>
In-Reply-To: <cover.1749469962.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5062:EE_|SA0PR11MB4543:EE_
x-ms-office365-filtering-correlation-id: b2e457a8-0297-419a-5ed9-08dda848bbbb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-2?Q?aPEchthtkgRuAdttvl0YMxkORakB64yFj1SeMXXrPAem0bvdsMxCi+4nzO?=
 =?iso-8859-2?Q?/m7Gevu5lHSCyCWijZMvx3WrOMYMjFO0OK3Vr0RFOG5xYE1ydc4kIoFWjz?=
 =?iso-8859-2?Q?Vvrgp6OItFTBiohSMyjYASSkdNNIT/oLSO1c1Bg0tJ4xoSb0T7UnHV6OpG?=
 =?iso-8859-2?Q?VXhb3QzBkYop8SQp/zVzN19yEtAUaugDGXybHijsOoTSZl+kXPsfl3YN0+?=
 =?iso-8859-2?Q?KhsyJNegwmshgww0KGk+SEJC+JGzXv+/EmXL33xB0X71yh/guhh6wS08MK?=
 =?iso-8859-2?Q?BifL2UIA/bCAJHNN78BqO0ZxCYzkbcQkAIMCMX7G0WuyLydQosF8gZiJ1G?=
 =?iso-8859-2?Q?rRUqdZxa7C786NLBHKGLXJUkBvhiuzKOY8kpbe3vJ2xQFAMH7ZBr1O69xQ?=
 =?iso-8859-2?Q?zHYzPMNsZ+1BOyTvvUOKJZ1/qAjBaldTwWw9ohspFe9ZTY087rrDLtpiZU?=
 =?iso-8859-2?Q?mySBIGyDB0QtZx3AfqxXnvXlqFqyalqRDDOROMDAtBL5F9TV+MeIfGkFfa?=
 =?iso-8859-2?Q?45ncqAQAIs+CsV8qOVdA5UiyV6D7dFCpnL0gXlyCi+OXVXx2oSRLjPjK3f?=
 =?iso-8859-2?Q?HrxtKv//i58mFCKwOBL72uK3Ehk72hXWOYajCc8V8f3MXExzdWZHPCqzGN?=
 =?iso-8859-2?Q?sX/DXi96fqaZkOuvJCH+DFu0w0Kc9Qqs189TyD9MUUdC5zJ5GMEjLIEGIO?=
 =?iso-8859-2?Q?eIBSE9USPh+iyd32kUEzm34iFPlzA2A322qfl74yKDEi7IuQEbKufrOKZi?=
 =?iso-8859-2?Q?0DQeFGLJuycFBWwf72mMjyxKkbqtMC3VnxnmWZclYE1UhDnZ+tIuHIQ8Cz?=
 =?iso-8859-2?Q?4PudJMiDKxH9HW0RAjT39QkVvfQEEy1NX54s4cAk/RpKGYIM5wLQGc3tuX?=
 =?iso-8859-2?Q?RKZAym9aFdxTYkwY26EQFwuWVSkesMYTu/Y6aQ/yM4zHjImeEqcIUNSUpl?=
 =?iso-8859-2?Q?AsmrxRomnHlmEYdi/576XH+9oXHqo5eO8d26lTdPqDC3l2EKYw0DrUVTVX?=
 =?iso-8859-2?Q?RP2k9GEo6RAexmCp4THzoZOTicHTCne5XnR2VOD2yZKftfHW9VUgdTKopB?=
 =?iso-8859-2?Q?kUw/UmlWi3sM/fjDMYIgO2aR4PyUp1nzqRvI5tqidtEbdxue6sn561/Cdg?=
 =?iso-8859-2?Q?feu137sDitomkcis4Ut7iwMmsSXb5DN7O/z3x5FSFpg6xk3aIDd7wqfNpj?=
 =?iso-8859-2?Q?PlX+rhUZFwy6cM9vQjQFLwNR6nFzrovQFaUay6bSKba64waslBZdgbW8+G?=
 =?iso-8859-2?Q?TweXbt5YL/qoy7IjRoiwkAPAj09qT9GgDtvvbeZ618gZQXcd4EanO4kgti?=
 =?iso-8859-2?Q?IdKwj/7jAQFz/oquVuk2c2bAIUpnb0mKz3vMZjSGUPd0Di62VSt28r/nv2?=
 =?iso-8859-2?Q?w3HAQvIs2JxV1vHVd8unQe/4+UePcIkk7wjT3q5QZQYEACJ29nkO3pGFPR?=
 =?iso-8859-2?Q?VpXU+okJ3SbVjph7mV5pBpJpsDlnEe0PZi/NgOfqaC4S9dmPEIL2KPtQ0y?=
 =?iso-8859-2?Q?Ji3/n8my/zZtV7k8dl+ThSfZlbaJN6jT4Z8VANDSUudQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5062.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?urVEFV75q0E6HBlO0FlD0H/7onq6dNZPUUMNrc0Z0JH6vDeDY8s91nZCq6?=
 =?iso-8859-2?Q?vCU+NmLubvD5xwGCii5CkqFKNCYv0Cegarx0uQyz6m9Jte/1XIzsO7OA5e?=
 =?iso-8859-2?Q?BtzG9TjxD0/pg6MXGXJh2W9ZC0gcBQkuY3JxEwv9/9/5RV5BjQQNFp66hs?=
 =?iso-8859-2?Q?9mxgKqZn3dZ+MGJxngvO9BG0JgsYH7Q/KWUxux4YYZtESlf3jHxRKvl/KI?=
 =?iso-8859-2?Q?ML3Sut/IkKReNwunAEnbIlZ/zkXpLCEqfTq7K61TwDr/Kfo4W41ywYk/CV?=
 =?iso-8859-2?Q?3+U7lEeaFY4kWg+iyT0lVG3Yhq+dj/6Fu5eWyxGy+dXN/yKy/ksoqj2WWA?=
 =?iso-8859-2?Q?Nosm07xquUv98Jh/udDVfVx2WfnRs2cRby2D9BuzNAzdX375aFGccmUHPe?=
 =?iso-8859-2?Q?VZ7uaFMy6w2H+/w6bgYEwBKCy2yVeJ0rrAQscG7fbGgRIqVT68mAFVb95A?=
 =?iso-8859-2?Q?pUnoDsi9zznO709VIhVKNMvQpRpMb9qqbHCU0bc8jzaqCJ+V/pjUvp0nHB?=
 =?iso-8859-2?Q?kk6Ikgvs05Rae5x3pLd1DJZWgQX3zwldQSGH97dbTewGL3UAy0pirLvKAe?=
 =?iso-8859-2?Q?Gx8lDAKhO1mfhBw+1PMIg4HFbMhHWdWq2p1giS468KTOv9tkqjuB1jpJh6?=
 =?iso-8859-2?Q?FZdgG5YYGOs5MKJYTdT/0HqbOVcwVFkxn7HX2boqE/k2Dh374lpzGUSyi8?=
 =?iso-8859-2?Q?cOcVIDWAJlOzCIpJIQMtsIDl8zg80VcIBkoI4ZPCAVEVHhem7t4NkOofOv?=
 =?iso-8859-2?Q?sJDaPmJGcHB/3xgAVnrVTYa/nm2FEYcE0KQNWwOAWQVSRR9npXjVEBZgcS?=
 =?iso-8859-2?Q?tIRdeNCRZBybFNtWlmwSTUOvksAN31NjlZ+AkOXmmQkCcgrdOzWue+KXNb?=
 =?iso-8859-2?Q?lf5LPB5KzBWGay3yqb+mLVlIMkAqUpVhIfCQsL4yJkYTTh6F3uc85Jn5YL?=
 =?iso-8859-2?Q?BFuD48rIaytp3t4NRjtx7A9q+vN/blTu/m+K7XttaVtjDei1AuL2K3kVOc?=
 =?iso-8859-2?Q?pM09S41pwfvJZlXIE8DEtwHjfuMUTcp81BgKem67mEKP+0Yu9Rm/aK0tNn?=
 =?iso-8859-2?Q?lS+M6cG6UQuQKPwiMNQHPIoX5lphI4AKBTopBCVisAEG8Gchksd1goE9Gx?=
 =?iso-8859-2?Q?wVammChg+vGZIosEwQq1tvDPmYP+hltwpFFfXYEFRt4KibTIN1OjibbMd0?=
 =?iso-8859-2?Q?yJpDClVoL2HQGLb/Jip+f9czMCAkRO8M3cch/Nky8CQ23n/q2VG9CkkqEa?=
 =?iso-8859-2?Q?yVN7Nduy1gZZ5WTkBYOa6dVOoKSH4zqC2Sp+ob4KwO+LxaN+wgKJgVrgRR?=
 =?iso-8859-2?Q?EGk9yBeUzHxdVmHqHx69HfdHhIfDL7FTaZ/1RRn93/OXHqLg0pOYkKeZ/0?=
 =?iso-8859-2?Q?ugtMywBU728x0HzCYctm9od7Rt6UafzvOW8AWZeFvvNMC25PvnYoOqlIep?=
 =?iso-8859-2?Q?jkAYf3TbuZSuQYfCasmxJPy7KRtb2OzKmNMazJFAZ3ypkRJZcCzpVzf/RF?=
 =?iso-8859-2?Q?s3p0FgTqa9TitHlYe59cQXXuRQQsQPDsUwnHy2OSHnN/skTs5KwachwGSw?=
 =?iso-8859-2?Q?62x7DlrJ+2jEKFTxEimK3MteaOSKeXWQD+k+lffaOD9teT6VhL6kHTdAC8?=
 =?iso-8859-2?Q?12LQNjUFqq1w/hO5RwHMGW9Pc8xSKRF7so?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5062.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2e457a8-0297-419a-5ed9-08dda848bbbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 18:00:49.6949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /ri1nl75FM5JJ0NToRVteB/8W6lSZYLph4iwHjGP5tBmxPyhFpoW7H2cakfvMDFE7RtTcRGW5ZYiG7x92qtqb4OsBlPVWlXxFJNDbdURlVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4543
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

>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jan=
i Nikula
>Sent: Monday, June 9, 2025 1:54 PM
>To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>Cc: Nikula, Jani <jani.nikula@intel.com>
>Subject: [PATCH 0/2] drm/i915/display: register include cleanups
>
>Prefer intel_display_reg_defs.h, and drop unnecessary i915_reg.h includes.
>
>Jani Nikula (2):
>  drm/i915/display: include intel_display_reg_defs.h from display regs
>    files
>  drm/i915/display: drop i915_reg.h include where possible
>
> drivers/gpu/drm/i915/display/i9xx_display_sr.c         | 1 -
> drivers/gpu/drm/i915/display/intel_cmtg.c              | 1 -
> drivers/gpu/drm/i915/display/intel_cmtg_regs.h         | 2 +-
> drivers/gpu/drm/i915/display/intel_combo_phy.c         | 1 -
> drivers/gpu/drm/i915/display/intel_combo_phy_regs.h    | 2 +-
> drivers/gpu/drm/i915/display/intel_crt.c               | 1 -
> drivers/gpu/drm/i915/display/intel_cursor.c            | 1 -
> drivers/gpu/drm/i915/display/intel_cx0_phy.c           | 1 -
> drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h      | 2 +-
> drivers/gpu/drm/i915/display/intel_display_power_map.c | 1 -
> drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h      | 2 ++
> drivers/gpu/drm/i915/display/intel_dmc_regs.h          | 2 +-
> drivers/gpu/drm/i915/display/intel_dmc_wl.c            | 1 -
> drivers/gpu/drm/i915/display/intel_dp.c                | 1 -
> drivers/gpu/drm/i915/display/intel_dp_aux.c            | 1 -
> drivers/gpu/drm/i915/display/intel_dp_hdcp.c           | 1 -
> drivers/gpu/drm/i915/display/intel_dp_mst.c            | 1 -
> drivers/gpu/drm/i915/display/intel_dp_test.c           | 1 -
> drivers/gpu/drm/i915/display/intel_dpio_phy.c          | 1 -
> drivers/gpu/drm/i915/display/intel_dpll.c              | 1 -
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c          | 1 -
> drivers/gpu/drm/i915/display/intel_dpt_common.c        | 1 -
> drivers/gpu/drm/i915/display/intel_drrs.c              | 1 -
> drivers/gpu/drm/i915/display/intel_dsb.c               | 1 -
> drivers/gpu/drm/i915/display/intel_dsi_vbt.c           | 1 -
> drivers/gpu/drm/i915/display/intel_dvo.c               | 1 -
> drivers/gpu/drm/i915/display/intel_fbc.c               | 1 -
> drivers/gpu/drm/i915/display/intel_gmbus_regs.h        | 2 +-
> drivers/gpu/drm/i915/display/intel_hdmi.c              | 1 -
> drivers/gpu/drm/i915/display/intel_hti_regs.h          | 2 +-
> drivers/gpu/drm/i915/display/intel_lspcon.c            | 1 -
> drivers/gpu/drm/i915/display/intel_lvds.c              | 1 -
> drivers/gpu/drm/i915/display/intel_pfit.c              | 1 -
> drivers/gpu/drm/i915/display/intel_pipe_crc.c          | 1 -
> drivers/gpu/drm/i915/display/intel_pmdemand.c          | 1 -
> drivers/gpu/drm/i915/display/intel_sbi_regs.h          | 2 +-
> drivers/gpu/drm/i915/display/intel_sdvo.c              | 1 -
> drivers/gpu/drm/i915/display/intel_snps_phy.c          | 1 -
> drivers/gpu/drm/i915/display/intel_tv.c                | 1 -
> drivers/gpu/drm/i915/display/intel_vblank.c            | 1 -
> drivers/gpu/drm/i915/display/intel_vga.c               | 1 -
> drivers/gpu/drm/i915/display/intel_vrr.c               | 1 -
> drivers/gpu/drm/i915/display/skl_scaler.c              | 1 -
> drivers/gpu/drm/i915/display/skl_universal_plane.c     | 1 -
> drivers/gpu/drm/xe/display/xe_plane_initial.c          | 1 -
> 45 files changed, 9 insertions(+), 44 deletions(-)

Looks good to me, for the whole series:
Reviewed-by: Micha=B3 Grzelak <michal.grzelak@intel.com>

Best regards,
Micha=B3

