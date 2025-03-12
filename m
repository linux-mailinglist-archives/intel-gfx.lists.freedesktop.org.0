Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31968A5D548
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 06:06:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08FB10E6C0;
	Wed, 12 Mar 2025 05:06:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i4yTNbEZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB2AB10E0B8;
 Wed, 12 Mar 2025 05:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741756008; x=1773292008;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d6ikEbuuU0dEqAK+lVyktSCtNQ8PZIiyQLOmFeU7CCc=;
 b=i4yTNbEZxckn5oLBUdRPxcF7C0+Y8/Cbc/i+HbKnmbPVBCx3NxUbb3z5
 Uge0wJ+GaXRTwnz7DxPNcrCjAI+V3MoVSSTAcd9zeQZEtEcMw8DDYmwwm
 wE3PovGXwo8RPvSmJlFiE/svpoMF9NA0fiuM18thfLH1Q7qcedm4lsKjW
 vVFheI9/EG1EJbgNzftF45Ju1TRvzPuVirJGLJGCYbicfqu3cD9VnS82l
 yj4X+r+fjS3PcUrIJEI8sqqNb6z8nKDSpzNswxgZNEr8JHQ5FAcsAz7Yw
 cBaTJGgoTTr3kBSJlOqbkImIwly9Yuq8hU9ei1tod43RIITmKJGze6iHP A==;
X-CSE-ConnectionGUID: ONOoxZt+THyCSRYx4m5mhQ==
X-CSE-MsgGUID: xE32AE9xQACUjcRn5tKXpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42952473"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="42952473"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:06:48 -0700
X-CSE-ConnectionGUID: pLewErl8QCmS3lBh70mrww==
X-CSE-MsgGUID: VhDimLBfShSK9ID6WahqFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="121218821"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:06:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 22:06:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 22:06:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 22:06:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mDOtg9uAYuVWcIZnPnzIrB9Gt8cezHaXdOjMjYjqlHyS7qgx2+6+jGneXupLABNRvXoiRO7jbKRlYNN6pvCBI+Qv/XWz1EB8g8SCvvj5N71qV5SkpJaUZ2IGzLklorwi5yOw+AkQSKofXwRei9sQ4Z/Qig+7xVKdTYNRPIT54o9RCbtcHByGpo4hQWWFlfRpeonrXN/py5sWWgx3sjHByUVaSa/8hFEXFKZk6mU/EEjNOb3yqPE1f8XrRqufJMgiKfZPnw2MI+2NIQZ4/jQPRpXaKDbP8Ppi2Q/5G4shXuJl6Umv0TzIwaemO9Fc1aepRvspgANVpFgUIKXSgDvhJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nmpivSTS5O7vILBvzDpMHUCZeu1ns/BL3hk09geU6og=;
 b=PVOXn4JT/7ZzAApjPgRPfT+1s4PYNGJ8yWmciXjPAQ/kXs0bIt0aiehXH8ujAKdzXXdv02vGbDYkZKcoNok/B4ww7uNyzYZD4jiuPkCPS+FyNfEhTh6ky4TamskGMxL2pEYsCq/0d2ItHdP7EupjyGByfz17zwvIjgHxcKV/BaSlGN+FMZ0s+JVJlSGJf/MQJOGI3TpR0kFHzRtX5Li6ipEwXmjCMuFSeDwQPNaD0mJKXACc4TCrbO1qFV1DjOPCX3O8ynGWCaXhj7kyDR0zW1uCE+dDB0C+5P7e1YpzTZcxC9Espe1WqrNhYODcbQtF/Kbbob2ilzcODBzmUJ+kKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB4968.namprd11.prod.outlook.com (2603:10b6:510:39::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.27; Wed, 12 Mar 2025 05:06:43 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 05:06:43 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 2/9] drm/i915/connector: convert intel_connector.c to
 struct intel_display
Thread-Topic: [PATCH 2/9] drm/i915/connector: convert intel_connector.c to
 struct intel_display
Thread-Index: AQHbkq+m5bVqBKNP+kW3qwtCxZc2f7Nu84fA
Date: Wed, 12 Mar 2025 05:06:43 +0000
Message-ID: <DM4PR11MB6360FA0F776C26F6BBC1F4EBF4D02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <cfee8d2ee404376109ce42ee3662899995e9fa67.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <cfee8d2ee404376109ce42ee3662899995e9fa67.1741715981.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB4968:EE_
x-ms-office365-filtering-correlation-id: 0c6b96f4-cb46-4edf-31f2-08dd6123ae3e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?J1L12pB+LrcVnyoP9eeO0b//nuV5knBdCeKraaPlf1zpq3ROo+KzYLs1ml6Y?=
 =?us-ascii?Q?6CX2+aT52GhCtceFtFlRpLW2yzgEj2J79l/kYepC46d2EyuZ5U4h3kLWS7Tn?=
 =?us-ascii?Q?5kyJLj0cgkO//sQIUU/CqDeaRsXHyQjxeilA7GrSPUxxjYM+PSaGqhJnIyzB?=
 =?us-ascii?Q?+As3MuLYYmI41VjrmRvKTtcunk1Kb8UQZYsmOovgvr4IWSXTIP5cZ40Tt62f?=
 =?us-ascii?Q?GWrVvccO9rzNethNdSH17Is68pWs/kCdH4WqeaxCgwQ6mRKz2SLOxdBdbDrO?=
 =?us-ascii?Q?DANlNw9HzABhlhfzhtaBl8b/lYzla1XAWiDIfnIeikQuyjgFm3Vi/6qvAZCa?=
 =?us-ascii?Q?HHNbHC+hsE0yNjyeYJedhhb6FN5fFUJqvKBZmzuFK8+G5wSlV/U8OLI1X2QQ?=
 =?us-ascii?Q?DFoJRkc7lIAr6zTEBRh/fs96YX5BU6wyLja5ithm54xO7Bf/H1I3lt5l1tIA?=
 =?us-ascii?Q?VB7czW2LVzfPK1hK9zvi75d2yxiunmqm5orxIEDOeTYklGsVSz/z4p4urCe/?=
 =?us-ascii?Q?kS3FbK/F5dNJOkMCYo1SrtmCDxRNlLPYiVMdnUU5Mzp38R29ColK6hSPEfSN?=
 =?us-ascii?Q?xkoYktpSWHRwAd9sSE+uBc+8Bac5b2OR5gmHjygMbwBO/VdrvN6qHuxb/FZ9?=
 =?us-ascii?Q?tyAKqm5y39Gbwtcc30asZM2x+4oIawvXvD7fVAaoMgzrXMLYRXTygse/3LOT?=
 =?us-ascii?Q?IbM3XJ4jljtJRMXp4R4WOo3zLUpMxZ9xFv/1u2lk++uxBm1/RqgoGjrE/M6S?=
 =?us-ascii?Q?g9xqQLYEt/+N1U61sT+PNdt19WuOt6piSjxbfT+9/1X7tVykpZLGht6L2dGL?=
 =?us-ascii?Q?VQB5hlKGtCyiRRlpBcjj31IEh1u4YrBBY0/2AMjmcPryG3FN3cQvCXG5vG43?=
 =?us-ascii?Q?1liLQPbCeUtjot7GpS2+gF0YhvCxREV0eqBB2vb8JSwm1iqv1jbKKpvfc8OW?=
 =?us-ascii?Q?D6HsFF1MOzY8TBhuFSoWmkQfvMXmC/uveg7z/I2704FjeH2jUxoAohOdZjKD?=
 =?us-ascii?Q?DAlf8dRsEgoiEEGGaewSRlXVoRWbie/D0Q9NDGXgxoIAxoA4xJPoTB0YAubf?=
 =?us-ascii?Q?RltsEUqoKBRezkUJpEZBq5x/LmzObSAgOnYWdlA1zMTv/NYGiWpJcX2Cqbo6?=
 =?us-ascii?Q?qkNwoS5jwOZtwLxX2Qutoawli7zfOSEhdUp5UFf7X7MAIKkz1xnVlJSzI4UW?=
 =?us-ascii?Q?+a3e0NCnkzWGz0SkmGHViyTLEDvPblYjgKb18CGW9NQ9bK8X2DpuJfwf5Yg0?=
 =?us-ascii?Q?fKAX42PRczLtGjMSXodj8q4ETD8gkmnnOg8V3L9+yjHWR9DKlbVqdvc1dSzy?=
 =?us-ascii?Q?relJlYaO1J6W2DiV8C8QDUNXEpjHudkOyqiBBQ11ZYzNTZFLD6Vm2KPG1Yvr?=
 =?us-ascii?Q?N0ZvDsACT7O7M1zPN3CUPdgDCSAyM26jfurMAL5WhHmzrTiY/UF1u0TGSiVx?=
 =?us-ascii?Q?dky2JJTLaLXnzxmI5+ydPThOFoLc8Nvi?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7/wK07UEUL14zjnFvZD5kGQppUIrXMVoEAwYhpd5rcxjSFKe6DRc5iOjMBpE?=
 =?us-ascii?Q?Fz5ydwGK1lfCvCDO4iUKS6+OSiscNZYYM03t0L5DQXDtvwHmIwJMMlqNIW8c?=
 =?us-ascii?Q?b6cD9IuxIS37fjSazk+2w/XMokSano48P0gjvpJzzGIrJYoTQfR1nSSuseKz?=
 =?us-ascii?Q?24D0H8rRluoT6K8L+e13L1ShrwYDC5Z1ImxEyLuLzX4lxPj/tztgpM0RSqP8?=
 =?us-ascii?Q?e6I53pv3zR3Sjy8ZoAIgh2turXuzVnGX2QbUnjxRjostFgImQLlMoNNBDbub?=
 =?us-ascii?Q?9A9xp1qcyR9JRBxRcbwMBaMrIZwhjbVljBvVgcXdmAZhTvOxPulRbSFxnMf2?=
 =?us-ascii?Q?d660PnqG6JPCKPK67xmuP+9OdNCQUSYpwNFzWDCz7T+X2dvso/d0AT2fkrTy?=
 =?us-ascii?Q?4UfQ3jp25Xv6+dlwBWmp8G8X5L/GNoQjWgy3hXejkHEvIpSYhO6c1ukvDiRu?=
 =?us-ascii?Q?RL1rmT53iME1VciMgr3PEnT+Q6X7HnW4swC3bPF6tW14eM/AMJ8cu2yfmdct?=
 =?us-ascii?Q?3P/EbQA2ccB2JL+sjUGfbAUf9HtfSay4UbbnWETlb7LPVEBZh3l6ZwQY49Tq?=
 =?us-ascii?Q?PYm+wTX7c8KEm05VhGVwhEgWQmoaubGRKqKau85WMiofSiYrb5srLjXVzmS/?=
 =?us-ascii?Q?+ZW6gU4+0E9rQBF7m0eEwBv7KiSxqVo+jn8c6stiduCXzmWN+zliegC9x8S/?=
 =?us-ascii?Q?XFqtivxi82IG9mtjXbLbPjB40WsFujUXn+hN3YEfNIh7xDIlEiD4I9UKgrTC?=
 =?us-ascii?Q?HEtY7XASITM6A5DlNQrZstmWQUSLLrCh+NBSEMdcq3MsW5krlu16uGgK9C0d?=
 =?us-ascii?Q?CK/ots93viCLmeEQUd6cJIJux9ylrUq/I009fWtRc7Y+CPFNoK/tumHMSVgr?=
 =?us-ascii?Q?Ovwmo1eFFgiMrnTc3Jo/AMdJEbcvtiLp4BAcruJeATVbfvH26BG3D7xOC4c3?=
 =?us-ascii?Q?XZ3IXx/wc2VSC/xcRweWLZtmAfUMNv2IFVTd84dcaqup9Y3nFvtZkVSIvyUs?=
 =?us-ascii?Q?79RMMhN3na9JXQm7uaz44cf3c93csvfZKaUl/Eyyd+pcoWGKyE+HFyz6Z65D?=
 =?us-ascii?Q?MM+JTL0OiGwKNZJhuTvr9X9+cNax2bABs52xZvYuGnGBxRKfseO+3LPGG9dQ?=
 =?us-ascii?Q?vjxDOytPzFP6t+kr/wL3izWe0ZMET3wue1u/uybkDExHgiG5egZwAkHXW1Dv?=
 =?us-ascii?Q?BUTb9+tXLyrQoSzS0MmV1lv2GOG3FSqomrLUO+oOgcbEuzLqhxiJI6YsYGxy?=
 =?us-ascii?Q?S4FlwsXrwFcbARGWBIbj3zHbEUK6cHjmGqyInUjSEwH4Pb3OhergQeRfE+7A?=
 =?us-ascii?Q?Md6HgHS3n0E70HFjSpccdU6oLxu+KZakMq5ecBMFbkAnYwT2+OH/BCbxUShr?=
 =?us-ascii?Q?bpRrIqzL72p0picj0fkgvaasNf0OsYpkmLt4iaJEhM2+2h+w5DzS82I3Cigp?=
 =?us-ascii?Q?YVAGHxdgbQpHr9zSAL3DMsNzAHuBRhlsqykFXDoyIcrMwIgUEvpII4kkquHW?=
 =?us-ascii?Q?qJuLVt3uh/DcKt10m9KoajY2LCq/VORIekHRHi2fhe3htvdQ+kKRcq/KXre3?=
 =?us-ascii?Q?eC2M/hq4sJOS4JON0Imta+P1/lnK23dXl5UTjScx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c6b96f4-cb46-4edf-31f2-08dd6123ae3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 05:06:43.1302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5IJf3bNwuZhjjeUJq5kpdTUuYuD/oaGaN/T8CE+dZ/x+do01PTLcaimwrhG7/vrgTsvie4J8KRLnBEgLMyXzWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4968
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani=
 Nikula
> Sent: Tuesday, March 11, 2025 11:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 2/9] drm/i915/connector: convert intel_connector.c to str=
uct
> intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er.
> Convert as much as possible of intel_connector.c to struct intel_display.
> i915_inject_probe_failure() remains the only call that requires i915 poin=
ter.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_connector.c    | 45 ++++++++++---------
>  1 file changed, 23 insertions(+), 22 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c
> b/drivers/gpu/drm/i915/display/intel_connector.c
> index e42357bd9e80..6c81c9f2fd09 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -31,8 +31,10 @@
>  #include <drm/drm_probe_helper.h>
>=20
>  #include "i915_drv.h"
> +#include "i915_utils.h"
>  #include "intel_backlight.h"
>  #include "intel_connector.h"
> +#include "intel_display_core.h"
>  #include "intel_display_debugfs.h"
>  #include "intel_display_types.h"
>  #include "intel_hdcp.h"
> @@ -154,13 +156,14 @@ void intel_connector_destroy(struct drm_connector
> *connector)  int intel_connector_register(struct drm_connector *connector=
)  {
>  	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> +	struct drm_i915_private *i915 =3D to_i915(connector->dev);
>  	int ret;
>=20
>  	ret =3D intel_backlight_device_register(intel_connector);
>  	if (ret)
>  		goto err;
>=20
> -	if (i915_inject_probe_failure(to_i915(connector->dev))) {
> +	if (i915_inject_probe_failure(i915)) {
>  		ret =3D -EFAULT;
>  		goto err_backlight;
>  	}
> @@ -204,10 +207,10 @@ bool intel_connector_get_hw_state(struct
> intel_connector *connector)
>=20
>  enum pipe intel_connector_get_pipe(struct intel_connector *connector)  {
> -	struct drm_device *dev =3D connector->base.dev;
> +	struct intel_display *display =3D to_intel_display(connector);
>=20
> -	drm_WARN_ON(dev,
> -		    !drm_modeset_is_locked(&dev-
> >mode_config.connection_mutex));
> +	drm_WARN_ON(display->drm,
> +
> +!drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
>=20
>  	if (!connector->base.state->crtc)
>  		return INVALID_PIPE;
> @@ -264,20 +267,19 @@ static const struct drm_prop_enum_list
> force_audio_names[] =3D {  void  intel_attach_force_audio_property(struct
> drm_connector *connector)  {
> -	struct drm_device *dev =3D connector->dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct drm_property *prop;
>=20
> -	prop =3D dev_priv->display.properties.force_audio;
> +	prop =3D display->properties.force_audio;
>  	if (prop =3D=3D NULL) {
> -		prop =3D drm_property_create_enum(dev, 0,
> -					   "audio",
> -					   force_audio_names,
> -					   ARRAY_SIZE(force_audio_names));
> +		prop =3D drm_property_create_enum(display->drm, 0,
> +						"audio",
> +						force_audio_names,
> +
> 	ARRAY_SIZE(force_audio_names));
>  		if (prop =3D=3D NULL)
>  			return;
>=20
> -		dev_priv->display.properties.force_audio =3D prop;
> +		display->properties.force_audio =3D prop;
>  	}
>  	drm_object_attach_property(&connector->base, prop, 0);  } @@ -291,20
> +293,19 @@ static const struct drm_prop_enum_list broadcast_rgb_names[] =
=3D {
> void  intel_attach_broadcast_rgb_property(struct drm_connector *connector=
)  {
> -	struct drm_device *dev =3D connector->dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct drm_property *prop;
>=20
> -	prop =3D dev_priv->display.properties.broadcast_rgb;
> +	prop =3D display->properties.broadcast_rgb;
>  	if (prop =3D=3D NULL) {
> -		prop =3D drm_property_create_enum(dev,
> DRM_MODE_PROP_ENUM,
> -					   "Broadcast RGB",
> -					   broadcast_rgb_names,
> -					   ARRAY_SIZE(broadcast_rgb_names));
> +		prop =3D drm_property_create_enum(display->drm,
> DRM_MODE_PROP_ENUM,
> +						"Broadcast RGB",
> +						broadcast_rgb_names,
> +
> 	ARRAY_SIZE(broadcast_rgb_names));
>  		if (prop =3D=3D NULL)
>  			return;
>=20
> -		dev_priv->display.properties.broadcast_rgb =3D prop;
> +		display->properties.broadcast_rgb =3D prop;
>  	}
>=20
>  	drm_object_attach_property(&connector->base, prop, 0); @@ -336,14
> +337,14 @@ intel_attach_dp_colorspace_property(struct drm_connector
> *connector)  void  intel_attach_scaling_mode_property(struct drm_connecto=
r
> *connector)  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> +	struct intel_display *display =3D to_intel_display(connector->dev);
>  	u32 scaling_modes;
>=20
>  	scaling_modes =3D BIT(DRM_MODE_SCALE_ASPECT) |
>  		BIT(DRM_MODE_SCALE_FULLSCREEN);
>=20
>  	/* On GMCH platforms borders are only possible on the LVDS port */
> -	if (!HAS_GMCH(i915) || connector->connector_type =3D=3D
> DRM_MODE_CONNECTOR_LVDS)
> +	if (!HAS_GMCH(display) || connector->connector_type =3D=3D
> +DRM_MODE_CONNECTOR_LVDS)
>  		scaling_modes |=3D BIT(DRM_MODE_SCALE_CENTER);
>=20
>  	drm_connector_attach_scaling_mode_property(connector,
> scaling_modes);
> --
> 2.39.5

