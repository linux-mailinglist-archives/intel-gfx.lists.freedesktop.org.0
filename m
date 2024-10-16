Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB9B99FF7D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 05:29:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7284710E652;
	Wed, 16 Oct 2024 03:29:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dGEwV0Y9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01EF610E652
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 03:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729049389; x=1760585389;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Qu/4dx0osW34snpAV9XRDSDC9nNygByBN2rOlaal028=;
 b=dGEwV0Y98I+BB4UN9DedHy4TA0mmLgZROzw/ubzseQJrc/QLxZ7QPbST
 IrriAIBusZafsnOqQBqXJs+JeILvsFCUk4wLQypJYAKWvzMuMnYflYliu
 Pa/rQyT9YZiJMco6svXniWeAJKw2b2/DWYAOVpjSU29l6oc2SNYg9cukA
 CjcJoUPX+VXNwFM8CPwZkkqwOtrZyTOcu83BLXLqT4iaFP77CtZEw+jyf
 x6groPeJkNpV5m8zxLRAVCv0jY5sIU1+L2XrFKpACtWRz0hdQOR99qEzd
 RMImBMXaDMTEgNiZpAmi9YpdtpCKDilnfSnT9QyS9/FuPToTlngH2L1G1 w==;
X-CSE-ConnectionGUID: PcgBKVe/SjWYImW7KLyxhg==
X-CSE-MsgGUID: 3UMEIOqhQZWE/c8DP6YaPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45955822"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45955822"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 20:29:48 -0700
X-CSE-ConnectionGUID: 199xxRICSIuzhEDomTd2qw==
X-CSE-MsgGUID: a6+YdNRuTzWJWjAIh/iKDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="77983735"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 20:29:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 20:29:47 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 20:29:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 20:29:47 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 20:29:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mNu3KIlqwR1PaYfCx2JC1g/L3OL3kKJXHnYzE44b14rvCSMr02bTyxhlRQqo2HJx/9m/6IKr+CXUxlEvs7S9Z+slyPR3NDzGeB+/o++SEzLmY3fY5dUmCaObpl5M6+kcHA26bjCRnL7iI6UITEenr7QuFZmZqExFBgfZ74KX6xqHP4hy0XWfC2msYwEVMw8gOkTqexfPllFnUVRvxOkUzIakW1SjF8FRnQVbRGYz4bHDMQFKhnS6oynQNTh2GGYH53mFkiQyJzotjBbEEaMXAGXcYznSufZ6Go2r53Ydm+1nk+spvUSzKAjy53FxP5wf72IgEHcZRGvh+eeAIChXVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5zMXqp9WqSGBhwz+ZFEdbCewmsGZPpPV64LNd/a3AnI=;
 b=x8lt6QAbmYkRa8kdBO0iss9OlWDi+AfDdur5X0up/Pt26KK3CHkOdNRXAVe4dh1cpFe9+3WudSIwf3CQF0IX8GYtiPZcYoRrjeCKUN3nmi4fv98qfuUlCstGkLvoZIiSadB9wYH+7rDgll645VGyjdpHy9UcgP0/ejkd8AVNzZurqrqbpsWsxpr0kSR1CMdP0wG/iKtHyL8BMuurSkrs150mUOQrGquK8rLLXiTVjYcvJrro6RQYhZmNxlv1v/vRBcvPmmpAPCFEl2Wjzi27hfAyZiuPZudMKYeOBsonFV9Sa7zcGgFHG6K8SOSF1qdBuq5ys5swlPtK2exiEKTRvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by CY5PR11MB6535.namprd11.prod.outlook.com (2603:10b6:930:41::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Wed, 16 Oct
 2024 03:29:44 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%7]) with mapi id 15.20.8048.020; Wed, 16 Oct 2024
 03:29:44 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shyti, Andi" <andi.shyti@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>, "Chris
 Wilson" <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH v4] drm/i915/gt: Retry RING_HEAD reset until it get sticks
Thread-Topic: [PATCH v4] drm/i915/gt: Retry RING_HEAD reset until it get sticks
Thread-Index: AQHbHw/VGA+43A+FukaGikYroZIPLLKIfISAgAA7J3A=
Date: Wed, 16 Oct 2024 03:29:44 +0000
Message-ID: <SJ0PR11MB586781FA6D8A0DA6C145EBEFD0462@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20241015145710.2478599-1-nitin.r.gote@intel.com>
 <20241015235241.GE5725@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241015235241.GE5725@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|CY5PR11MB6535:EE_
x-ms-office365-filtering-correlation-id: d72d0bfc-4352-409c-5d28-08dced92c731
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?kcVGKHi91Qqr7Wv7pe3AhkKGiTsqtpnA12ITDfAvuHYE/FLDNltg5PENyrws?=
 =?us-ascii?Q?Vf9hC5oACIYdQ4VCXsSG2WU0DUJwngwe4h9lGM8CeAQI92UVks3S/foQLjhQ?=
 =?us-ascii?Q?G92EmpDxnFgL68BS9EUVJgQKpCDtl2/IiD2Sa9930Py/Xt+EOxhewgrCIGCh?=
 =?us-ascii?Q?i6J32BO6JIhVnKcWg2+VWieMboy6lKYgbTGOQIQm0lp4Qa6b2vihQb1tZiqK?=
 =?us-ascii?Q?UcKCpbuog6UUJNsviJcTEgbJosGccGAmyS7vTdtELyNvmFvitgBYdzaeFWpM?=
 =?us-ascii?Q?kBVHulyJJqKdlLSEEiuWYVgmVq/gQgyNuUe4xe+uKXZkhKvrv0CnqHUl/kz3?=
 =?us-ascii?Q?EJdpt3S4pB562IkuHSfCTSdcDpYr9JWauJzBAkLNQIM5JtoTaRCRwKlwdYVn?=
 =?us-ascii?Q?rQ0XWwTBuadAdYC2rfarWj1iII1xOv6kQsmo95BiJM6YdJgx3erSN8rCngDg?=
 =?us-ascii?Q?xED+zOkXxpkonndfog2zqP8v8gosXikDpwEIADzEd+pjARH01xsSitKkZUEH?=
 =?us-ascii?Q?tAoseA+sUXn+cIdmD5kE3E2vhxexANPoIj+/fgolpO4O+G/yzYUh5BuEOveq?=
 =?us-ascii?Q?BlNSdLAKTSVaWWkHGHf3dyT0H+d3z/Wk2V3eCjRHGfMfx53RPLS3p59V7E2y?=
 =?us-ascii?Q?MJWyFy/k+PgiyxuqTGwQxWNu6O1AeiPrJBCpm3ibROwqT8JLQwh2Top+2p6f?=
 =?us-ascii?Q?le1nH1+B/1AHhyPv5e2kwzuRuCWLFyWVve6I9r/bP4aQwQAffd0eN2pUHjy3?=
 =?us-ascii?Q?/WEoOhEd4B/cu/fDmc/IPvx/MtzUF0KtgxsX1ajjdd45ck18nnChErgTYF5z?=
 =?us-ascii?Q?ze+XE2VpmobClgNDmQgiXA7L9ZW8w0Ejw3h1BQ4cWsAHp9ciPYyvs+iAhXF5?=
 =?us-ascii?Q?SncMq3ZjOlV1UBkPhAWXRU2z2DDy6VxbSjV4WEp8odnQa5QlAu8bPQtHWdvr?=
 =?us-ascii?Q?IaekEX1L9LPmD2Rijc0YjizapTbo+/m8f2ulZ1FtCS2fqeeCQ1YtS+B+Ys0Y?=
 =?us-ascii?Q?FPR0zAheBPojUNzmO+45KYpQcr5Qka4CclDyW1xQF4bowED5NqMngri5liFV?=
 =?us-ascii?Q?+o+kVoPQkdB4trv+Qo2DAxcOfINkvs+t/fanmmjN5o6bkkB63N1okWBWu7H1?=
 =?us-ascii?Q?R1Ff5d0T+p+9Uc7fH/7frqQ5oCJYNG9idZfJXM9OIaEs+FiGSYz+pEpCOg0E?=
 =?us-ascii?Q?76ivupwFFPgQ5gfdrGspjX7Fo0pkwkNZ9Vt0pmoFzl9rGr5DI/WlSCAhk6kc?=
 =?us-ascii?Q?+73oeKH17relLffY3c7VIimJlIfN/Nw71bSKvweTIWwlFZPSB5HB7Er7EUcZ?=
 =?us-ascii?Q?nRc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ouo50CeyRLPw6PT+XlfuowDbjctXjfLpzAUWmH6Gs/nFOFyA71K+/JU/CXVK?=
 =?us-ascii?Q?1Pwcyoyl64b7VkVOutT6+Z60nRyuR1LjkLLT81jsmddB3B1Eba5W4yfvboD4?=
 =?us-ascii?Q?SmfdvcNQLn9djoJLHBi/8IlV9JnqWXYri07EEZHLmCEf6jqlqR4iSCmk6YAy?=
 =?us-ascii?Q?OR0VwsexAHbNjZRAFC6DwxhuTgotuVj0WshyekKfR2SKlduDVuAbBJMoVzFj?=
 =?us-ascii?Q?R1KroryHy7yADRMx7cjZxd7bje/2Q9fKgQrwL9Zc0VIG09ArqZMNWhdnfzPU?=
 =?us-ascii?Q?KJW4JhH2/Nh3442CUu2DWHtTXZuupAi1VgM5LMKTgojoqMCWrpIB2SVOhLtr?=
 =?us-ascii?Q?SjfAD9rI9/9Q2S+5WSyP89OWXaagQrXEFssiCKbwElbd0VJLtN6dpbWCJ70u?=
 =?us-ascii?Q?nmwsrhmv3TKpr734+dTIoS3oz3ezmIAY+rT7EnGLJuNzKppyCF2INnEAWWiZ?=
 =?us-ascii?Q?ARgJYtP/W5OeQ+80NwInFPGo0nBox0UFYD8zk5xeGssTZ3zYtqQYIpTgGxP8?=
 =?us-ascii?Q?HkhL0jQf8ikinvZgayqIO53o2i7BsCoTr2fUYaS81pekLJADR6TRbuGm7wtt?=
 =?us-ascii?Q?Pk10D6+K7+20SG/kMCr9FzOrU0VZXKwa80uvzg9b1vQbFBVroxb0aoDHe0Qa?=
 =?us-ascii?Q?KUzqsWMdbfnwQko8/YytBiJMZb3FuZvH92YCAgByKFIDxs5SrgtQKhYQn/Yh?=
 =?us-ascii?Q?OL2vnDZaKARW4w409NziKYKfp75zNUF/2HKTArR798cHFdBbllkGJH4ETKbo?=
 =?us-ascii?Q?pZ7zuOBiU+EiQDUCbe3TNtcKq8xN2Y9H8ZrvRgD0Ukbi2WkNoK3hYp8tXJFa?=
 =?us-ascii?Q?BYggKDmqpxGhn3BDnEca07Mozvi5yJ4JyWVUH8Vik1aBuMer5Tth8SH9SAfl?=
 =?us-ascii?Q?ji32tiaxAqIVK1j+s406w16wE0igN2dXBJNJFg6aR6yZTOibqn6FnB1D8Fuk?=
 =?us-ascii?Q?tLQs//jm6rElM7floWz5XVT+DCF2XgjQC3JAm8M8ucUGaN7ik/b19CJCbmjd?=
 =?us-ascii?Q?Dxlf4hQiDFn+Y/EUi0MfWqKtjHOJm+G5zY5njvRAeY7TPL08ZXiatLtHUGXC?=
 =?us-ascii?Q?2rzbSVQSvPIyhaBJa0GfRghMZNJGA2dojMuVotOXhkVFlW1SQU7D/AwZEcKT?=
 =?us-ascii?Q?xGGBmomU+LNGMUKITGSa/5f9vWfxcY3MYqOgOpsZ+Eg4bQ22oefmH0S+CGtW?=
 =?us-ascii?Q?l6qK/PFRXw6s7JWweUq+tAacs2eMhQ3PSpXD2haL3PgWQ3PU2b3k9ovz/3BZ?=
 =?us-ascii?Q?Jo02zgVm1aqgyt0NecMYyog6MEIgQB/IWe4sFsGB6TV3aHOvWVMFXhjhB57E?=
 =?us-ascii?Q?BVkJsRe1wW/AjzHN29YQXiD4ZsG2/nFLD8PqI2n3OxZB+/OUpt53HDm2C7N4?=
 =?us-ascii?Q?P6WdTq9jBpJLSHZs6pKE5cdcyHQUx6VMC26yEkVNjCTJ8hJtlNLMDHftFqQN?=
 =?us-ascii?Q?xOZZpkfzxCmsfJUhQuyVhkDhUR1qeV9jsOyKrWB2G8Qx6uY5NeQeKyr2UKB/?=
 =?us-ascii?Q?0EsqPlAU6yA5rNzDoEvVTJjpcP0LCLAcgyuDbMgqjk54IwA9kSvwo40ltYBa?=
 =?us-ascii?Q?BoNDDjjn/g984F5M8chB8KEJvmvlhSSKgOsEHBJ+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d72d0bfc-4352-409c-5d28-08dced92c731
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2024 03:29:44.2641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tY3YjETKM4W9k6yb8zjJM+mCoLJu0UUCqpDAUUxAEISEZM/ZA83Q8YSJ72KbAwEBcSEFt4xqYyJieWCIQV4GdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6535
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

Hi Matt,

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, October 16, 2024 5:23 AM
> To: Gote, Nitin R <nitin.r.gote@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shyti, Andi <andi.shyti@intel.com>; =
Wilson,
> Chris P <chris.p.wilson@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>;
> Chris Wilson <chris.p.wilson@linux.intel.com>
> Subject: Re: [PATCH v4] drm/i915/gt: Retry RING_HEAD reset until it get s=
ticks
>=20
> On Tue, Oct 15, 2024 at 08:27:10PM +0530, Nitin Gote wrote:
> > we see an issue where resets fails because the engine resumes from an
> > incorrect RING_HEAD. Since the RING_HEAD doesn't point to the
> > remaining requests to re-run, but may instead point into the
> > uninitialised portion of the ring, the GPU may be then fed invalid
> > instructions from a privileged context, oft pushing the GPU into an
> > unrecoverable hang.
> >
> > If at first the write doesn't succeed, try, try again.
> >
> > v2: Avoid unnecessary timeout macro (Andi)
> >
> > v3: Correct comment format (Andi)
> >
> > v4: Make it generic for all platform as it won't impact (Chris)
> >
> > Link: https://gitlab.freedesktop.org/drm/intel/-/issues/5432
> > Testcase: igt/i915_selftest/hangcheck
>=20
> The referenced HSW-specific gitlab issue was closed in 2022 and hadn't be=
en
> active for a while before that.  This patch from Chris was originally pos=
ted as an
> attachment on that gitlab issue asking if it helped, but nobody responded=
 that it
> did/didn't improve the situation so it may or may not have been relevant =
to
> what was originally reported in that ticket.
>=20
> Looking in cibuglog, the most similar failures I see today are the ones g=
etting
> associated with issue #12310.  I.e.,
>=20
>   <3> [220.415493] i915 0000:00:02.0: [drm] *ERROR* failed to set rcs0
>   head to zero ctl 00000000 head 00001db8 tail 00000000 start 7fffa000
>=20
> Are you trying to solve that CI issue or is there a different user-submit=
ted report
> somewhere that this patch is trying to address?
>=20
>=20
> Matt
>=20

Yes. This patch is for https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/12310
I will update the link.

- Nitin

>=20
> > Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> > ---
> >  .../gpu/drm/i915/gt/intel_ring_submission.c   | 31 ++++++++++++++++---
> >  1 file changed, 27 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > index 72277bc8322e..b6b25fe22cb8 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > @@ -192,6 +192,7 @@ static bool stop_ring(struct intel_engine_cs
> > *engine)  static int xcs_resume(struct intel_engine_cs *engine)  {
> >  	struct intel_ring *ring =3D engine->legacy.ring;
> > +	ktime_t kt;
> >
> >  	ENGINE_TRACE(engine, "ring:{HEAD:%04x, TAIL:%04x}\n",
> >  		     ring->head, ring->tail);
> > @@ -230,9 +231,27 @@ static int xcs_resume(struct intel_engine_cs
> *engine)
> >  	set_pp_dir(engine);
> >
> >  	/* First wake the ring up to an empty/idle ring */
> > -	ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
> > +	for ((kt) =3D ktime_get() + (2 * NSEC_PER_MSEC);
> > +			ktime_before(ktime_get(), (kt)); cpu_relax()) {
> > +		/*
> > +		 * In case of resets fails because engine resumes from
> > +		 * incorrect RING_HEAD and then GPU may be then fed
> > +		 * to invalid instrcutions, which may lead to unrecoverable
> > +		 * hang. So at first write doesn't succeed then try again.
> > +		 */
> > +		ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
> > +		if (ENGINE_READ_FW(engine, RING_HEAD) =3D=3D ring->head)
> > +			break;
> > +	}
> > +
> >  	ENGINE_WRITE_FW(engine, RING_TAIL, ring->head);
> > -	ENGINE_POSTING_READ(engine, RING_TAIL);
> > +	if (ENGINE_READ_FW(engine, RING_HEAD) !=3D
> ENGINE_READ_FW(engine, RING_TAIL)) {
> > +		ENGINE_TRACE(engine, "failed to reset empty ring: [%x, %x]:
> %x\n",
> > +			     ENGINE_READ_FW(engine, RING_HEAD),
> > +			     ENGINE_READ_FW(engine, RING_TAIL),
> > +			     ring->head);
> > +		goto err;
> > +	}
> >
> >  	ENGINE_WRITE_FW(engine, RING_CTL,
> >  			RING_CTL_SIZE(ring->size) | RING_VALID); @@ -241,12
> +260,16 @@
> > static int xcs_resume(struct intel_engine_cs *engine)
> >  	if (__intel_wait_for_register_fw(engine->uncore,
> >  					 RING_CTL(engine->mmio_base),
> >  					 RING_VALID, RING_VALID,
> > -					 5000, 0, NULL))
> > +					 5000, 0, NULL)) {
> > +		ENGINE_TRACE(engine, "failed to restart\n");
> >  		goto err;
> > +	}
> >
> > -	if (GRAPHICS_VER(engine->i915) > 2)
> > +	if (GRAPHICS_VER(engine->i915) > 2) {
> >  		ENGINE_WRITE_FW(engine,
> >  				RING_MI_MODE,
> _MASKED_BIT_DISABLE(STOP_RING));
> > +		ENGINE_POSTING_READ(engine, RING_MI_MODE);
> > +	}
> >
> >  	/* Now awake, let it get started */
> >  	if (ring->tail !=3D ring->head) {
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
