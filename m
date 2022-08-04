Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA775897C0
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 08:29:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE8F8DEB2;
	Thu,  4 Aug 2022 06:29:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D3C28DEAD
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 06:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659594581; x=1691130581;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dbhu7S9z/MTzjgOFyiQi/TZZCntxVJ9Zk3ocOd1MuoY=;
 b=Ku5mhrTUQ+vmDRbjcD22zmDWW9EX8gDfQLtg5iz1JAfKsk7Nx+1mx6qm
 ZfHi6thKH/4Q85U7P/c7A/8NrFNjj8A3KGNGOktx0Jnc/37Wj7R4pJTb5
 SKSdRGMfVE8nMmQDwEYAeGubzFxfhplhn6Tkk0GFObAqCJKsTXtamtHlN
 p7US8T4C5OvcyWTBtDiOuwaDahGd9l2Arvrk//0XKwpcc0JzGldc1p7lM
 lhWNRmoRxHyUQGPQ66Fsdx9+joI3mFRQu0i05xi8KO7HQrmz25QZ6beVs
 MCwxMUdrmCSdmo/vu9eCmLljiByUPuQ8dcxCwyaGmpO3M+v2KY/wSZM/F Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="353850496"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="353850496"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 23:29:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="848848567"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 03 Aug 2022 23:29:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 23:29:39 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 23:29:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 23:29:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 23:29:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ll5ffOamEceFkuBI5oOURypvOyl2telpCBcB+rNMgYS9zmVJ5akwKcXM3i/fWls4W80f3GOJk2T/rOlDQ018vqh4knsfzFIFhm5T8dbJEPbV+j4F/99FQzFOUILf5gl9w6R0tiIFYn/soestTome2qz3i+1akobMMCl/1+wjCNhp+i/gHN8TQlUA6t1i2wOT1ilJgeONCYnSme368nuAP1KjIGgFUpa2m4InaBVudCwHzIJ+9oeE54TlF/VnNupywbnGb9jd93UaJ8HTEYa4MUiia1mVvGZifGHFE1hmzCKw2Rwde0we2tpNp+F3d6MT981vqac7YcJwfErUgY+UcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vHw0QeDVi9yDBbuBzI6F7Za4VNQuJlJ5HypVmC/LAHQ=;
 b=YArtP73dLyu+mQG6uUS662C6Pf83q7yC1quQgYEqzJoYevWKTkvdue+eM7l6XRZGbItepJM/4aK6lZPV+EzyGoWcoorCDIm9oBoBQ4jMi8Xn2623bHU/gCSL+yhCXjgAgXNPwEilRIizzZ0gG/ejZ/8fuRKtGW9hNt1xEgqb08MX42PtfLqjxwfNQZ6CQk+XhLv8yrDeJH/zwRSILvoP8KuQ1ZhWNS5c+QN7PPO3ZAV3gt6e8wz3rQkujPlTye8TD+Q6RxzKUTY8++aRc4gKU52Egkj6fKfqG3omjK7wD2hLAnrLC243l1jn7DucdOmyI08YH6Ok05pBLaVhhu5tGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by MWHPR11MB1999.namprd11.prod.outlook.com (2603:10b6:300:20::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.16; Thu, 4 Aug
 2022 06:29:32 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::b1a6:2b63:7c49:5cc5]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::b1a6:2b63:7c49:5cc5%4]) with mapi id 15.20.5504.015; Thu, 4 Aug 2022
 06:29:31 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Tangudu, Tilak"
 <tilak.tangudu@intel.com>
Thread-Topic: [PATCH 6/8] drm/i915/rpm: d3cold Policy
Thread-Index: AQHYnOcMDQki31XGPUS2zRoIb+DDC62duiqAgACek0A=
Date: Thu, 4 Aug 2022 06:29:31 +0000
Message-ID: <CY5PR11MB62115ECB65DC130905F6580A959F9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-7-tilak.tangudu@intel.com>
 <YurecdLzMHDoEZOJ@intel.com>
In-Reply-To: <YurecdLzMHDoEZOJ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 839de141-0e53-42c0-3d3a-08da75e2b0eb
x-ms-traffictypediagnostic: MWHPR11MB1999:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hZhbFZwH0mjQJ4eQP1c+JBy2wq66QSdP5tu3n/HCGFU4B0vWX6hZWZDFil1PiBEu0AebOe2CAIKk+Rq/SGnV1QUekrNEMW6JZ02Jkb0fvblyYOOAImlbHB2oOxV4kaQrbZ0mpgdKl/i864ctE3u86DL6ynKNGNrWz7pPk96AycIDJW8ev6lEocY7FoQLYfh5ErZak32fGfppb3xwDaWNDijtHTr1kP2MDTUwpqxyJ9B9aF7U1/HRvzWPDHI5RKO5G6H2qhIyVhbU4WYakJuVxKcv+OySl+hln6W85ckX5QccMxod2uMBOikn5Ebm4Ou+XnjJclv8eUny2cYeP+V36uRqp1WvXqEvVpGsE83ZGYes8N49QfKTPqK/WcXjb5hwvbM0RWkbfjDyxThW5gnR/unIgZzVmIY2zKaevYa19vNJXL9DgnfFt+diziC9VWyjrNieljhLP5CvWMWpG58wEHocnusuFfCZ4BNOIcu8fwIv6BShGned+b6bNg0p+DAVSPszSKsN7p0pODjj6BolduTtDlCKZKGLoJDucdmItwTlKQlsZYGeC3m9BZwy0O7vYOafwEOzRu7KUEJ0Sp210l0Xypn3FNxGEsVSPTvju58X+YnC/qxaT8GncaL50ouOgj/Ga7yhFCD9yxPDsrqLhRdVu8Lhz84nnqWQGYxmCNrpIeLLHB8L/IHSRmNK+t452va0pbyePB0KVl9bCE3bKW4YwvMGQ11IRUP/JbLRBJiR7fgqKokAevxnFlFYozjVXBLclpPk8tk5qBiYvN6o7Dr863xytvyXI+TQqLLbN6pS8j3GHt1mQ2hcgMuOVD8Afs86R4QmDbFIS19GxkPL5l1Xxe57YBkAorDdhWHADZA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(366004)(396003)(346002)(39860400002)(316002)(5660300002)(8936002)(52536014)(186003)(83380400001)(64756008)(8676002)(4326008)(66946007)(66556008)(33656002)(66446008)(2906002)(66476007)(76116006)(55016003)(54906003)(71200400001)(478600001)(110136005)(55236004)(53546011)(7696005)(6506007)(6636002)(26005)(9686003)(86362001)(41300700001)(38100700002)(122000001)(38070700005)(82960400001)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P5CwQcDOcX8XrhvJrm3czP+rxggR81jxV63MljfzevLA8QJ/VQTTYYFpDVf8?=
 =?us-ascii?Q?J4hn2WO01RYD45r0pS6PzPReCG+HHQj4uiyq/30tbBarY4Hbp612HvZWwK+x?=
 =?us-ascii?Q?cqEk9ghOtN/3r5pi44vJcvSCcLyjRRm+kgMgPHMr7i9iuiF8MIenoxW7wMbf?=
 =?us-ascii?Q?pFTYTJg0HeysrZRG9qV2ZX4qjdm0HD3iS4X4V382VwvW+LMWt2OaerVzZxbT?=
 =?us-ascii?Q?syDtFeUfiOa2PzzYNxpYMpwmwBg8iARpko2Ps62NL911O71d9N22kn5APJKL?=
 =?us-ascii?Q?b4HdbpqJQYIbleFvwUPU3R4jTnvErglovTKeH0LG9bQWraCxSmKrN3R+bODv?=
 =?us-ascii?Q?gPqOr8079pzEbFDeYd/LqmtcIPOkTg9CPbQBngdsMoG2C9SITiJ61ydSoUyN?=
 =?us-ascii?Q?ZAiufF+1XtGlgN/5xJuPC9oS3E8mVrZtZAhcmuSGDKD1EadRJsDg7z3uZtny?=
 =?us-ascii?Q?+8cl38N0ZpyL5d5SEZyFA46LRfaRQccOLSwEaUioqDydXhQePjCu2syaAPtZ?=
 =?us-ascii?Q?0tEU8Ct6h2HznQk+hiiewON/5P56X/0wRVL8uUj35YkqzSHBLuvNgLmJbW+O?=
 =?us-ascii?Q?jXBuOvEjQZ2jwXQFuW7Qp54MPlXA8b/zxW2lzgdd376SBfAWRS3xOBVN2/4O?=
 =?us-ascii?Q?NEj7qzxaLAfpCGCNEjOehRqFbTN5Iq0Gx0EzT6h4vtyiD8bvlsiFVyTcy+Zk?=
 =?us-ascii?Q?cmeMDvTExcouFNE7W4TUB9fi1CKjBJX1jCKoIkVVu5BEC8Dth7kJVuVAUb8i?=
 =?us-ascii?Q?8DPghYvWwL/VDxflEdmqLT9kUe30VHkE2oi/z90QRF0ARQldj+jWpcOEDGIC?=
 =?us-ascii?Q?0CLn02qcGHVW2IcTfIEvZ5G8aOZQuN5uzZEfeLqM6CZiLbZHtZb3B034Gnks?=
 =?us-ascii?Q?xAZqYnKkKPtOnLhwl+AULZQD1uE7+ov8CSG4OIGlLz9MDM8bAIitOgzWIXGo?=
 =?us-ascii?Q?I4AGop7EVR/6asWwyv5cxh49i4eFvr2stwiKipcKGwDyYxSs7XluIoCCPbU8?=
 =?us-ascii?Q?T70TxiNcTI0jyyRtKLAGo5yP/UIRFoTCF6kmbiMhnFkRcdJhT1XVNw/a3s1h?=
 =?us-ascii?Q?qlUsu3TEWrWh3feXawBEy+Btl5A+h85tnGPwO5TL6jSGHn/wWPhRo8YBjZQT?=
 =?us-ascii?Q?z2DMT+XThGVVnVR32UQ/GDQUWy1U2ZeNnrbwJd6P8vPtjw6hVpmNRkgyoJWq?=
 =?us-ascii?Q?IWyIqHqXDLiTrkydCtLLDoWPOPKa+PSQ5s/EDDZWhjsbQap4hCHsR19ClHIH?=
 =?us-ascii?Q?r8zao9Q2lNrRqnbalWihj6HNVWaDMT54o3XV5vX4swcaeHjgGRlmM8yQn3vE?=
 =?us-ascii?Q?JDc7s7SiKyQx8bvhgpsN0W4he2+0WqlmrN3IwRRftfIXz8Ix/mEvncAP/nOg?=
 =?us-ascii?Q?/aowWGt1prc2hAkAB9M1dvns/Agpx9KsFTV4pF9ORaXF4yoSm7ZKCwJ1h2C1?=
 =?us-ascii?Q?dmXQJZnwPPnGipDPULa24MPpmeFo0Ib3hhYl4zFzgP8l56+SXGYKw5/mcCOB?=
 =?us-ascii?Q?EWCKtA0KgVgYB4u8C09sZliqeD9BqZE054i4b6OzL10Ktsn3h3JxpzCQe/G6?=
 =?us-ascii?Q?Uj00Mvn4k5ttMFTabQj35eexERoAX1hjdVNmTZ6f?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 839de141-0e53-42c0-3d3a-08da75e2b0eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 06:29:31.7299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kQ0MOQOCOdH8Ogq4IbJl0eNxySw+YZ245u/x1pWJxeGB2LnTpGCcCP7+xmuyAidknPjjp/RE966WL11pAtwSOxu5L3vJljXryJ2bBi/ZyeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1999
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/rpm: d3cold Policy
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Thursday, August 4, 2022 2:16 AM
> To: Tangudu, Tilak <tilak.tangudu@intel.com>
> Cc: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>;
> Nikula, Jani <jani.nikula@intel.com>; Gupta, saurabhg
> <saurabhg.gupta@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
> Deak, Imre <imre.deak@intel.com>; Iddamsetty, Aravind
> <aravind.iddamsetty@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 6/8] drm/i915/rpm: d3cold Policy
>=20
> On Thu, Jul 21, 2022 at 03:29:53PM +0530, tilak.tangudu@intel.com wrote:
> > From: Tilak Tangudu <tilak.tangudu@intel.com>
>=20
> This needs to be sorted out... or the patch split or use the Co-developed=
-by:...
>=20
> >
> > Add d3cold_sr_lmem_threshold modparam to choose between d3cold-off
> > zero watt and  d3hot/d3cold-VRAM Self Refresh.
> > i915 requires to evict the lmem objects to smem in order to support
> > d3cold-Off. if platform does not supports vram_sr feature then fall
> > back to d3hot by disabling d3cold to avoid the rpm suspend/resume
> > latency.
> > Extend the d3cold_sr_lmem_threshold modparam to debugfs i915_params so
> > that, it can be used by igt test.
> >
> > If gfx root port is not capable of sending PME from d3cold or doesn't
> > have _PR3 power resources then only d3hot state can be supported.
> >
> > Adding intel_pm_prepare_targeted_d3_state() to choose the correct
> > target d3 state and cache it to intel_runtime_pm structure, it can be
> > used in rpm suspend/resume callback accordingly.
> >
> > v2: lmem->avail stopped tracking lmem usage since ttm is introduced,
> > so removed lmem->avail usage in policy.
> > FIXME here, lmem usage is not added, need to be added by using query
> > functions.
> > FIXME, Forcing the policy to enter D3COLD_OFF for validation purpose.
> >
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c      |  6 +++++
> >  drivers/gpu/drm/i915/i915_params.c      |  5 ++++
> >  drivers/gpu/drm/i915/i915_params.h      |  1 +
> >  drivers/gpu/drm/i915/intel_pm.c         | 35 +++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/intel_pm.h         |  1 +
> >  drivers/gpu/drm/i915/intel_runtime_pm.h |  7 +++++
> >  6 files changed, 55 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index 4c36554567fd..2b2e9563f149 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1581,6 +1581,12 @@ static int intel_runtime_idle(struct device *kde=
v)
> >  	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
> >  	int ret =3D 1;
> >
> > +	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> > +	ret =3D intel_pm_prepare_targeted_d3_state(i915);
> > +	if (!ret)
> > +		ret =3D 1;
>=20
> why?
>=20
> > +
> > +	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> >  	pm_runtime_mark_last_busy(kdev);
> >  	pm_runtime_autosuspend(kdev);
> >
> > diff --git a/drivers/gpu/drm/i915/i915_params.c
> > b/drivers/gpu/drm/i915/i915_params.c
> > index 6fc475a5db61..4603f5c2ed77 100644
> > --- a/drivers/gpu/drm/i915/i915_params.c
> > +++ b/drivers/gpu/drm/i915/i915_params.c
> > @@ -197,6 +197,11 @@ i915_param_named(enable_gvt, bool, 0400,
> >  	"Enable support for Intel GVT-g graphics virtualization host
> > support(default:false)");  #endif
> >
> > +i915_param_named_unsafe(d3cold_sr_lmem_threshold, int, 0600,
> > +	"Enable VRAM Self refresh when size of lmem is greater to this
> threshold. "
> > +	"If VRAM Self Refresh is not available then fall back to d3cold. "
> > +	"It helps to optimize the suspend/resume latecy. (default: 300mb)");
> > +
> >  #if CONFIG_DRM_I915_REQUEST_TIMEOUT
> >  i915_param_named_unsafe(request_timeout_ms, uint, 0600,
> >  			"Default request/fence/batch buffer expiration
> timeout."); diff
> > --git a/drivers/gpu/drm/i915/i915_params.h
> > b/drivers/gpu/drm/i915/i915_params.h
> > index 2733cb6cfe09..1a86711038da 100644
> > --- a/drivers/gpu/drm/i915/i915_params.h
> > +++ b/drivers/gpu/drm/i915/i915_params.h
> > @@ -75,6 +75,7 @@ struct drm_printer;
> >  	param(unsigned int, request_timeout_ms,
> CONFIG_DRM_I915_REQUEST_TIMEOUT,
> CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
> >  	param(unsigned int, lmem_size, 0, 0400) \
> >  	param(unsigned int, lmem_bar_size, 0, 0400) \
> > +	param(int, d3cold_sr_lmem_threshold, 300, 0600) \
> >  	/* leave bools at the end to not create holes */ \
> >  	param(bool, enable_hangcheck, true, 0600) \
> >  	param(bool, load_detect_test, false, 0600) \ diff --git
> > a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index f06babdb3a8c..20b0638ecd5c 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -8287,6 +8287,41 @@ void intel_pm_setup(struct drm_i915_private
> *dev_priv)
> >  	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);  }
> >
> > +int intel_pm_prepare_targeted_d3_state(struct drm_i915_private *i915)
> > +{
> > +	struct intel_runtime_pm *rpm =3D &i915->runtime_pm;
> > +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> > +	u64 lmem_used =3D 0;
> > +	struct pci_dev *root_pdev;
> > +	int ret =3D 0;
> > +
> > +	/* igfx will return from here */
>=20
> then this patch is preventing runtime_pm on igfx no?!
> or we need to return 0...
ret is initialized with 0. I will change it to return with explicit 'return=
 0'.
This won't block runtime PM for igfx as caller will request the autosuspend=
.
rpm->d3_state will be by default initialized with INTEL_D3HOT i.e. 0.
Please correct me in case I am missing something.  =20
>=20
> > +	root_pdev =3D pcie_find_root_port(pdev);
> > +	if (!root_pdev)
> > +		return ret;
> > +
> > +	/* D3Cold requires PME capability and _PR3 power resource */
> > +	if (!pci_pme_capable(root_pdev, PCI_D3cold) ||
> !pci_pr3_present(root_pdev))
> > +		return ret;
>=20
> If this is the case we probably need to block D3cold, but not D3hot, righ=
t?
Similar to above rpm->d3_state will be by default initialized with INTEL_D3=
HOT i.e. 0.
And we do not need to block the d3cold here as device is already incapable =
of it.
Server platforms may hit this code path. =20
>=20
> > +
> > +	/* FXME query the LMEM usage and fill lmem_used */
> > +	/* Trigger D3COLD_OFF always to validate with all tests */
> > +	if (lmem_used < i915->params.d3cold_sr_lmem_threshold  * 1024 *
> 1024) {
> > +		rpm->d3_state =3D INTEL_D3COLD_OFF;
> > +		drm_dbg(&i915->drm, "Prepared for D3Cold off\n");
> > +	} else {
> > +		/* Disable D3Cold to reduce the eviction latency */
> > +		rpm->d3_state =3D INTEL_D3HOT;
> > +	}
> > +
> > +	if (rpm->d3_state =3D=3D INTEL_D3HOT)
> > +		pci_d3cold_disable(root_pdev);
> > +	else
> > +		pci_d3cold_enable(root_pdev);
>=20
> why not merge these both if states?
For future D3COLD_VRAM_SR support scalability , target d3 state assignment =
and d3cold disabling kept separate.
Let me know it is must to merge both if /else block.
Thanks,
Anshuman Gupta.
>=20
> > +
> > +	return ret;
> > +}
> > +
> >  static struct intel_global_state *intel_dbuf_duplicate_state(struct
> > intel_global_obj *obj)  {
> >  	struct intel_dbuf_state *dbuf_state; diff --git
> > a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> > index 945503ae493e..7827b0c1a2f3 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_pm.h
> > @@ -31,6 +31,7 @@ int ilk_wm_max_level(const struct drm_i915_private
> > *dev_priv);  void intel_init_pm(struct drm_i915_private *dev_priv);
> > void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
> > void intel_pm_setup(struct drm_i915_private *dev_priv);
> > +int intel_pm_prepare_targeted_d3_state(struct drm_i915_private
> > +*i915);
> >  void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv);  void
> > vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);  void
> > ilk_wm_get_hw_state(struct drm_i915_private *dev_priv); diff --git
> > a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > index 99418c3a934a..568559b71b70 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > @@ -22,6 +22,12 @@ enum i915_drm_suspend_mode {
> >  	I915_DRM_SUSPEND_HIBERNATE,
> >  };
> >
> > +enum intel_gfx_d3_state {
> > +	INTEL_D3HOT,
> > +	INTEL_D3COLD_OFF,
> > +	INTEL_D3COLD_VRAM_SR,
> > +};
> > +
> >  /*
> >   * This struct helps tracking the state needed for runtime PM, which p=
uts the
> >   * device in PCI D3 state. Notice that when this happens, nothing on
> > the @@ -52,6 +58,7 @@ struct intel_runtime_pm {
> >  	bool suspended;
> >  	bool irqs_enabled;
> >  	bool no_wakeref_tracking;
> > +	enum intel_gfx_d3_state d3_state;
> >
> >  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  	/*
> > --
> > 2.25.1
> >
