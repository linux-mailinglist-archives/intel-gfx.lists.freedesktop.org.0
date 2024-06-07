Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B4B8FFB4F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 07:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D16D10E1CE;
	Fri,  7 Jun 2024 05:30:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WOFvngNw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3765610E1CE
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 05:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717738243; x=1749274243;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4/CPLNGPzv1maO2mNljDjF3gfsPY/fOc0+9NlzYw8QU=;
 b=WOFvngNw1d25KvBlW3EaXYnbByVTfjYYlT27/bovC1RyEEt04r270wa9
 tg97DTOKi9YbgAFUF9M4uLeVzc4wdWqMwUsWkER0kxHNwH06or1znfEi4
 eLPbILzpku/RGXfb75+UXvK2984E9EHJYK/MZtenQTPi3tq9Rl/Wk9lCU
 B7xdsUlYbyv84NEn8zkKsKMghkDP4tP5VNyPvIdVDoSAwLqFWGr3pNZE6
 8Ez055rEcxvY6IPHhtJfvrMrUJ6yAef7sJW1lgafunCcqsHT3q6m9XGTb
 ONvCM/PnyAFI8kU/XaE/uD9vc2CIoZQFeeR4o9nouVPXh/6G2XVlEeu8D w==;
X-CSE-ConnectionGUID: I51T8ra6R6yfjOxaDU5E8Q==
X-CSE-MsgGUID: CoXF5Cv0S9ahxx+f5mT0RA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18295613"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="18295613"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 22:30:43 -0700
X-CSE-ConnectionGUID: XuNLyBDtQL6HkOYulWwNog==
X-CSE-MsgGUID: Mc9nSwMATSKOgQK2bumwsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="38291493"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 22:30:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 22:30:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 22:30:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 22:30:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1EKEl4a941Xon/oAMKj7+Ql3Srdj8BQZCyDzcnaHHrhkvhpk4koM8eRobBhxgFz4ioCEGD3rIafcKzGuA4ezW/fll5pYc4nXPY7+sHgPxez7BpIBwaw4Fc659jBsU2sgBFrSEcDZNUFVxmHhf5uo2hyd6lGr8baoBeNhiW3M7YrRcPweK7gtDZU4kxBPa9LtpIHJCz0kQfhLKn7Kylp6Rxswlg97c8ImyMXYnC7EGldqNImjd4iMnemuL2FIpkg379gYMJx/wfCuzTIPtOv32bBV5IYTID3ryInH9I6jcbJSjxICk0TraYjPBNlO0Bqq5jSkJkfsWDaFc3nwnO2pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NjxKY5WCH/UHKjGEjsuSFgOAaQBtIykdx/FNOvuugBU=;
 b=YqRypnzuXdC4xsA1Y9abbofxMp4+9QD8TL2mtkkMB4WcXqS0Zzhn2ZQS0FVDnQxSX9xMI+dgigGeIcfndzdIprU/H9kcShZYAv26XBIhWdnwU4m+PB3ZhCfB38c/2y1dDEaDUMEGBDEgH3DdgZXUsCylM1By5seW6SCuaQhwb8JT0/MxBYcLtFcy9wJ1rsCgYXQUXHAtJ6SzEUVXcEA1+LiMKoWQiVerzip4SRiCAtWGaWs4TqS9oYnZUFEjm7i0Qbd6wGoymjZT6IyonyesuVeUcGXDweIOk8hmpRZzQCA2yibxzRQ0iCf5wY3lF4W4Tp51QOIS8CNKebNhyCkq7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DM6PR11MB4722.namprd11.prod.outlook.com (2603:10b6:5:2a7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Fri, 7 Jun
 2024 05:30:40 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7633.021; Fri, 7 Jun 2024
 05:30:39 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v5] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Topic: [PATCH v5] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Index: AQHapgVc4Bi/aMCsWEynXIaVs/vexrG76ysA
Date: Fri, 7 Jun 2024 05:30:39 +0000
Message-ID: <IA1PR11MB634879FF20F46A653B01C21FB2FB2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240514133143.718389-1-animesh.manna@intel.com>
In-Reply-To: <20240514133143.718389-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: animesh.manna@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DM6PR11MB4722:EE_
x-ms-office365-filtering-correlation-id: 5ef44688-a189-4dd0-3427-08dc86b2f7c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?/gr6Hj4LMeP+19jPiW8ELi2EyHnFXtHJ4Bc6gVJt/V4TdbbzhE2kiAdSqAjv?=
 =?us-ascii?Q?E9BCfEVP0fasVgC4QrXUkt/0tFQSnh3/afaJK6w6kXbzRuausThd05Wp/DnP?=
 =?us-ascii?Q?rgBpCPbx1yfLpoQi6T0sURCea9ROSke4mOJjNw80e5ccAp9quM0h5NrxQk+u?=
 =?us-ascii?Q?eiVWRH7gMYmfdAaTwsDAceluTBJuUd6GaWrO1ygjwMqjzA1i78HHRKTcZMc+?=
 =?us-ascii?Q?N9N4+ZIf3tn3YxPGPD8Tnvgbefb9U5WvSXfUWsE0pqaOR8rfIuLkCyLaFVUU?=
 =?us-ascii?Q?6XWD1ZBVbdppnk2dC1a74lW50+fYD2jLoZt8wmmbaxmLB1YXgy9JSrhRd98S?=
 =?us-ascii?Q?BRr1epjXOEwH7mMCNHFa4Pn6eb0aCVlNLIt2iUPKLHgCs2KfVSPWSlPfcFIw?=
 =?us-ascii?Q?lE+Py8dP6GyYkldDHLXFqhS8j4OTcw2Y+y+fB2ZvDYLoHvrmV4Z10P1FTwP4?=
 =?us-ascii?Q?SpGGdqHPzNJIxfUKG0/RxeFEaDWJ7HW84tHd1wG2o0Q7bY2/XFd7a3bvKymJ?=
 =?us-ascii?Q?NbaZ2NIQ079QYLZ421AHKnqDEnGiG68WEF7Que3FrZtQvSCJuTwLMVKiHYas?=
 =?us-ascii?Q?5+Db58CNtTaRBIGVadSb5refuTzr81KuuAmykHG7m9jIzWUHWrsg2sOIXSs1?=
 =?us-ascii?Q?sLY9bKDT95wM3ePVpWBxnHY4XAMDG1X6Hfc+qNJBNSngvtU+yD5v3YzRDFTa?=
 =?us-ascii?Q?QAi0zN+wmeR7qcs0LP8qdVpH84XffcM/CEZYGqdBX7gIRjhTggXvDB3QZQQp?=
 =?us-ascii?Q?kIx9SIw89DKgKY92mRGdHp5olMXu9HsDfCZ9HeDvP/7ndIMTkDE1yZLoo6WV?=
 =?us-ascii?Q?YnnzSdaSdgX2QaacHsEEJtcsNHstw8TkQT+1Rk8e+nwlCeAZUagBUXoqUmb4?=
 =?us-ascii?Q?ElHea3SS/fWfqsaYW6zb+JIx1ikHDRQ08JIUyaLBOfzem4H9WEoWT+XIDxMw?=
 =?us-ascii?Q?1ayOIsaRM4o5JMF9tWVgK6gamYEtdGTwhq1p4u0fKb9Kx45p+o28m+MjR4kr?=
 =?us-ascii?Q?w9BHenJUd0OE7QhdnWyTuBJst+1HK+JoEM4/4OeHvOpaYUzIRx8pLVJPXyzb?=
 =?us-ascii?Q?1m+JRyyWfe0WkX7lmXCxZarFtaz+sRkYxqDMjIyWcLEr6EwzUPLFzOrKrNMH?=
 =?us-ascii?Q?l1m3ivo2SFZ5Pe1xM2Ih9xcY4P9sWB2a9QqGNRzdP7RyjACs0jJApjX4TuGu?=
 =?us-ascii?Q?WW13bA2bGGzr/jbCPIsiK7ICriERFJ2nPwK1Gw7CgWMLdcpFkX7twWw/wyJW?=
 =?us-ascii?Q?1y/OrnPR6FUqZMrKUR8ZGz13Ny3lY2EnFAg3KIBrfaJLEOkKE7KD297WXymK?=
 =?us-ascii?Q?UpHGCFnfo+DjWvJHhh1yNYSufQgBFMuoEwxNbWrRV0TTG1qYOtpUA0AfQm8z?=
 =?us-ascii?Q?OXSQv60=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HWH0c4DC0y9jn4S00D5naLL7eIa78BzPMb3812PLE+f6gxA7y96eyErebj8J?=
 =?us-ascii?Q?f+T6y0NMOYPlNNkL1APYIkUzahR9NsvOXHGULochnRfhukXhnOjuJma7nyfD?=
 =?us-ascii?Q?zqTw1t8URaNttgzFCYYqH/H/LBNR1tA+GmJG35PjYBmv7RkERUDSXmh6WibY?=
 =?us-ascii?Q?cI3dPTNmlcJqbU1UbSnXbAwfQYaSX3TbG4OWgr03aWL2Y9STeQgOSuK5sWyF?=
 =?us-ascii?Q?+/n7BrGZ4CoVhV3s6Vgnftcawp3wNmPOFdjhruuHXcd35q0jCr7H8ZliGt7d?=
 =?us-ascii?Q?DxAQdEMQnItx6PZSaxKjBZYrYUShVAPqrV5YNDCIKiVYQmYoOTPWlQH9nmXn?=
 =?us-ascii?Q?ugPiDgaCowYtbKWFiasT42qJhDdD+0QlGWdbEejMsWEp0HRlifNNCBPRb8Qs?=
 =?us-ascii?Q?qH8Z62Spzs8zknqcVW9e9TFUVvQv9TxZsiFPkEoAZeWkhCVIRWaf/aKi3xF8?=
 =?us-ascii?Q?Xf4ksylg6/ffQb4LY0VqYGYceTZ9sAVaVDdsSm2CQ+YrgcucpVC5+0mXB8YP?=
 =?us-ascii?Q?JbpMhr1EZuMvS3boUiqr31OxPZyEKOqggPT9YEC9NUEmhC4Kttzhh4z/xjTc?=
 =?us-ascii?Q?dRMg2U2V1VMFs30S0dvIFLZmDg/nLf7WbEu/cpryFS+Ta8EFO21IpRgpLk30?=
 =?us-ascii?Q?sUcZs7HRotqqXRi+tOknay3W/GVp3kIpgbLH/t1lWttirDSN/0qAZblrmJQe?=
 =?us-ascii?Q?onhC30CXyU5EibO+Q0ULjCZgq6LZz1hx8UskCArPskczxM2yehPh9/PGXIWK?=
 =?us-ascii?Q?/oh+2WvGZrzk1+GErn/bYAww6UjFCxY4UUpD3UxOxEhhp6AI5GOMj+Oa8xSX?=
 =?us-ascii?Q?uPLGV6R7fkk1vk2S/sdceTfQNmLZCPfn9LAvYRzn2sdWZls0RqlI0h7wDp/J?=
 =?us-ascii?Q?zJYNbZgzwFaE2q/9ggdnvno6LNYAiAtYQz2QC3eV1AtGZSFQjKwvj8bZWVmx?=
 =?us-ascii?Q?0KOeUyzwUhwCWaYbK3LlMHLa4FKudAovuZz+EsYUWiQTsOToscu/2gPYcxoW?=
 =?us-ascii?Q?/F+sCZPWDmrv9PJEik5NyDTWcUcwgQnMTPRWRvlOE0m5b2JFhTNKp/6mLub+?=
 =?us-ascii?Q?UkfBZLv+lodRdC/yWJryO8XGwiVrLZ8wTEILcuY3oqzoOO/ErJnOJ9u5P6by?=
 =?us-ascii?Q?UaH46ly8jZMiCCa1WxjM7+GNwoXQPyeG9DgZm5XHeCMU2fUD0Id0Yzcx3FK9?=
 =?us-ascii?Q?EqoJ0tT7z6npBJj7dEM/4L/vu1/TpdszKQ0AzHjOUkl6Nc6Z/G7/gO8iGDQq?=
 =?us-ascii?Q?IUfndwvUfThWigSIh4QX3WUXe0wF8fhooKTRvZAGBgpbwpuMMWdYv+L69K8C?=
 =?us-ascii?Q?ZwK8icEDYVHxitncwrDYIOIW0igwsFltFc9XnEXUvaROwwOEr3+JWgROTkBk?=
 =?us-ascii?Q?OqBD6eSkpu6+SrasJKZ8YiK/z/atlGV42HUBjNOfs0Gy3D6WLXMID/RVI4Mi?=
 =?us-ascii?Q?x8B/hNgwx7FG/YH/MKG0tx2MfPZc593hur7qaSD4ji6nWwy9BhjrwECTPaXc?=
 =?us-ascii?Q?ibGOjWyVdFTgn6QfIKpMM10k+yBrxNwxmhbaiDZ2GBQJu61w6DSqvajBYl5E?=
 =?us-ascii?Q?+A6NBZGsuGV1vdh4bkYcGXbQ1JPo0IwarW3NvpGUbvYqOwVUMK8wNeHM8Rdu?=
 =?us-ascii?Q?BtCWRhrtBCasPCq7yL3Nw9Q=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ef44688-a189-4dd0-3427-08dc86b2f7c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 05:30:39.8988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /5Y/vu+Z44ESo8t3Y8yJdJpMEwYJJOOB4Has9QQfY+8t2F9hchovAixqkTpKIZ6Y/oulx5/BepoafbBjg9tFWQZVjUMp0CYoMqbk4xiyHesd+L8QPRBaEPAGuJp28rwH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4722
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

Hi @Animesh Manna

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Animesh Manna
> Sent: Tuesday, May 14, 2024 7:02 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com;
> Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: [PATCH v5] drm/i915/panelreplay: Panel replay workaround with
> VRR
>=20
> Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and W2
> are 0. So Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register to at least a value of 1.
>=20
> HSD: 14015406119
>=20
> v1: Initial version.
> v2: Update timings stored in adjusted_mode struct. [Ville]
> v3: Add WA in compute_config(). [Ville]
> v4:
> - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> v5: Move to crtc_compute_config(). [Ville]
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  2 files changed, 23 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index ef986b508431..0664c9478c68 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2497,10 +2497,15 @@ static int intel_crtc_compute_pipe_mode(struct
> intel_crtc_state *crtc_state)  static int intel_crtc_compute_config(struc=
t
> intel_atomic_state *state,
>  				     struct intel_crtc *crtc)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	int ret;
>=20
> +	/* wa_14015401596: display versions 13, 14 */
> +	if (DISPLAY_VER(dev_priv) >=3D 13)
> +		intel_crtc_vblank_delay(crtc_state);
> +
Perhaps to restrict till DISPLAY_VER 14 as mentioned in comment? Please con=
firm once with WA details ?

Regards,
Mitul

>  	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
>  	if (ret)
>  		return ret;
> @@ -3889,6 +3894,23 @@ bool intel_crtc_get_pipe_config(struct
> intel_crtc_state *crtc_state)
>  	return true;
>  }
>=20
> +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state) {
> +	struct drm_display_mode *adjusted_mode =3D
> +&crtc_state->hw.adjusted_mode;
> +
> +	/*
> +	 * wa_14015401596 for display versions >=3D 13.
> +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register
> +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> substracting
> +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> crtc_vblank_start
> +	 * by 1 if both are equal.
> +	 */
> +	if (crtc_state->vrr.enable && crtc_state->has_panel_replay &&
> +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode-
> >crtc_vdisplay)
> +		adjusted_mode->crtc_vblank_start +=3D 1; }
> +
>  int intel_dotclock_calculate(int link_freq,
>  			     const struct intel_link_m_n *m_n)  { diff --git
> a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 56d1c0e3e62c..d426dd9f7f87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -428,6 +428,7 @@ bool intel_crtc_is_bigjoiner_master(const struct
> intel_crtc_state *crtc_state);
>  u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_=
state);
> struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_=
state);
> bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);
> --
> 2.29.0

