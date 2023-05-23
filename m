Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C0B70D335
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 07:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641C310E028;
	Tue, 23 May 2023 05:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7407E10E028
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 05:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684820059; x=1716356059;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SlxUQqqyx7Do6RR88FQZqgVVARRUHsN0AWrMXf4hUWQ=;
 b=ZhSr/TqPeDnXgY/oU9mtXxrJww30MboKMBe3uS81CeG0n1XSVqGYj4cx
 mVenA+tfdXDm7MRcwPQKYTWWfMvKqcoyl7sLUx7d8RUh/qUWuU/uK6rWh
 eyJAdgU/RBf/fe7kWrNiL1vh3jsQqbDEoTOIExRshaaGZIjALe5bMmfHT
 0n7706Uhi4BXmD6NMnkVIOcud3O5nb9+iqXGd6/WqWBN+kPurs5GwBi9E
 1rrIkkJw/EP/5vKdBm4oLdm2hjtY+kLhy7XmpJ8xnnHaBC9hMG4yU0kOY
 6GEAJfUrXnSnhE4q6yPHoMTny42liuR3pXYF+YatgEPBxFy+hWyb6pzLa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="418841688"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="418841688"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 22:34:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="697921362"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="697921362"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 22 May 2023 22:34:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 22:34:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 22:34:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 22:34:09 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 22:34:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VrHH6D1B7ogdgaeeqJfJGbgH7pllk3p59suNGb918ho68cATV+Kei98g+RMJegh9hgb+UE1g4H87O/S1mdG+5ZDPP5/UWEdts2YsEVkakINTbpzmccG1U7vYB6tGpCb8XgzL+hj/KETFXie0vO0Xcn7A4pS37ycg2r/+sq645/224rEI9tCYsn1VwV8b8Fh0GuOQZVchhldgElPpLqtO6R2SdjlZA5OWhb5evStvtFA+0Mo/mTxYLMVkgtr4T59QQ/cs9iS20Xg1ivzVCB/zKu2k9Q493Zt/2Ydu1j2wvd7WGUxH0h2Yh7tILRAVfXqkGGNY2ygOiKNx3dz7J2LvXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UMHlCKulg+kKUPt383ht1QfvU3f++/tOB0AZWkVmZRM=;
 b=NdirjJBpKMhRJUfRtr/HDf6JuC1+Kbw6pNTjIlnfE8m8ZsdxtTUkOz3708LlOBGZfrwZEqnmeHUSIDnWPSU4jcFeLfpdsAylyoYHNPBOCT9i1O8BsYdBh36hHzLuGO5wn0y9hp5Ht3IPtZXN86sUNcN7B6/IH8YPkLfDGwfA0YcG3aJS12jsf6Wk4zLYx+xDFv6Xw9Lydf3ygH7JpcikS099S1NIw2UN0eSLAmWzJEMqkbcyIRX6nTjWszhdzI/CctNKDL7BK0nvbyP2kvctfC1nxETWSUgDGpfJR9EHyE3e4uXjsd+Bl4L/7eD7YOquEoYdVJQQd8/4CmMKXPsT1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB8222.namprd11.prod.outlook.com (2603:10b6:208:44e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 05:34:06 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39%6]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 05:34:06 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 2/3] drm/i915/hdcp: Move away from master naming to
 arbiter
Thread-Index: AQHZjTavz1vVOX7XO0usd/pvXwTjYa9nVcHw
Date: Tue, 23 May 2023 05:34:06 +0000
Message-ID: <SJ1PR11MB61290EBE158105FFC8F665D9B9409@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230523004455.1206533-3-suraj.kandpal@intel.com>
 <20230523052132.1213038-1-suraj.kandpal@intel.com>
In-Reply-To: <20230523052132.1213038-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA1PR11MB8222:EE_
x-ms-office365-filtering-correlation-id: b9e43fd3-19f0-4480-0ae4-08db5b4f5399
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: avtMpKOCcUnVkkIYhvGOeDGYWHx7illwqOHIS5BEWU6I7Dn4RzKG4kMbXRGWBoxhvGeOi9GJTCeGBv7Sns8XFA6ZQyVlOqUbRcJqQAfERGdZoF8SKp/WyfB00FyXhN8uM4i4c6604KRS76QlRyvzWdWpUeO2U2Sxn/kWJKYk3+lJr/+Or3LeemeImqDHJa7p5O3XBviejzO/qnEVBMg9BvnjCDq+Xk+swjZgWghsP/VpGXDPiGd3U+0HHyZtp8jb6hD6JLd7c3SaYPDrma4NOXRDrinvU8gwaotfd++l0Ezyeql+Ssq2/S/Aa2LOkXRo3Q5GzwrKqrPBdrQtrWwAVcRgQD7DmqRLsnSebb0sTURQdv8MZhk0hWMWZerKu3SPGRQ1Swlfe4BWlL0llxqDFFFLwwtTEAUyDNt3QULc0m1p9BuphcUOzhj66focZzxNQ4KR0NnqBkr3oXqQ99/hsxcxImVaNlZn/vixg+b0CnxZ1W7lP568yVV+PAx89RhqC849vKGotbK7OliY3OiqPKq6dh4pN45nsAJtwq7TsGn/DhdMscIfP6By91tDAPRY2h99rPCgbWOzXjfahqpPQiAElTTf6isIFzBWt+CHBFmHc3Ln5LKtmlS4MpaYDuwR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(376002)(396003)(366004)(39860400002)(451199021)(52536014)(5660300002)(8676002)(8936002)(86362001)(9686003)(2906002)(53546011)(6506007)(26005)(83380400001)(30864003)(186003)(33656002)(55016003)(107886003)(38100700002)(76116006)(66476007)(66446008)(64756008)(66946007)(66556008)(4326008)(54906003)(110136005)(71200400001)(316002)(478600001)(82960400001)(122000001)(38070700005)(7696005)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sluoq0iHJvxwMmyRM2q607PY7yaUIXC1Zg53WxVEn2Dd4+Fjq1/5L9pwHnN8?=
 =?us-ascii?Q?CRDadrRauo/mKiQlC/suArDZ88yxfbDHboKj5v5t5q8jYNW9Fvkp3rVo1WNH?=
 =?us-ascii?Q?hHG2H/bMuUD/Jo10mkOdaKc4G/SbN/2lTOjqQCWLfW74LpPN+N24Upi/lD3L?=
 =?us-ascii?Q?HC3eROMMHh16HVVT5wcO4eNS4id3HqaMoPC3rbI8W2CcK2nU7WdfXnCJXyI0?=
 =?us-ascii?Q?ehHOfMERBDKY6NiaAphkCNYGvLRvlA8KWrDklhelgAcvueG+9hIQQxAjlAOj?=
 =?us-ascii?Q?dXcuI2XTf5oPQ4fUqyR6rVFsP0fdK2WrJZdJyagcQUKMH7HKJIuDCwBIhnJE?=
 =?us-ascii?Q?BjtRDo9FJJm9hZOr8W+e2tkW7nb/aScZUTJ6GtExzkFR0ub/hTjKhJK1reZ4?=
 =?us-ascii?Q?RpSPZy0zKU2eJ7v7A7dMpZ0EHzeBNoMjrxZIrZGkWQQBPvOPALM+CSTBbw9g?=
 =?us-ascii?Q?eXdC8xQb+or7h64PEddQiYvp8dLGX0d7me38wB7domUpViRC7VKvFYuAchY5?=
 =?us-ascii?Q?ldFRHyYMWVKJbRDGC9wtvC1sPxwLhvERS5DCTeqW2Rs8yz2jg+nTwiaubYZ8?=
 =?us-ascii?Q?kC1ZyNSTnt5MU4e/uLXl7cNU6PfxZlZ0nOIO0vWePKkGCb9WqlkbFmt+Fssq?=
 =?us-ascii?Q?yo11SAKoQndWCj/0qNONsLSh/BNL4AYQ/QJw4Af8zXKTb0tsS83FBwraWb4t?=
 =?us-ascii?Q?tY9Zu1tCTGBMNXffqCuy9tF+r7ImG9poQJSlWlxVroG5plPbNr1+dtKeCP01?=
 =?us-ascii?Q?6JF/72beGlin7jejItORHtP4//mxWmv1ehIicUbRdTS/DXDnyfL/WFH37Y9m?=
 =?us-ascii?Q?fT9/CeB5fLtRrId6+yg4CDkdV47mcj7Srt9vN7JBSniwQd5rUzhx++vjqB/x?=
 =?us-ascii?Q?7VFhLiyLb36+r/BpCYUCFHHAJELg4f6gAjPrtHazVxiYhX2mXGoB3KM+DSwd?=
 =?us-ascii?Q?ZHLsGuwGtJl3VspTUPItklMqp5M6gDGnEz8oRq7DS2NBV8HBG9CGsn0K0fPP?=
 =?us-ascii?Q?aQ3IquAyIAXW9QTAHJMMc7d6ZSisvlWIHghKa5E5PogAM0P9aCrrxIsA38bP?=
 =?us-ascii?Q?4uKnmLGXTY62DQDeewNNqnKMQMg0arGThrnjaksUMx21pQBaK5Xrnqti5V8Z?=
 =?us-ascii?Q?vDst7bNM5BOa2bkKzPXJz6NSMX0na/MejcW8OxqjFrQSvONytVuCFRfZvY7P?=
 =?us-ascii?Q?fzWHQPM9KTl/d4EQAUgBj7zzC9V91ittTSpm1Dr/JhrEJVGcVlGepMG0/uQp?=
 =?us-ascii?Q?EBO9YK6IeMu7Y0XIjStsqVBxWDb/nYkiLhY8b8Sy6IKQxbdOWbQwq+39c/tO?=
 =?us-ascii?Q?2laCimK6I2fSJ2Y4phRR3yCqFNTXG/0DwIQN2qmBoxHdAjLymJ7GkZybbYxV?=
 =?us-ascii?Q?DPDgKJrn8dycEy6LoWDIlbd0x9WEA4SFuvDmvsggHFyVr/b6aLR1avFfP684?=
 =?us-ascii?Q?tw79qHTvl1xJmqjWxHSJlbd5iIszpsTd0SqMNIbuTCdE33O1cv7FOfCqwKwJ?=
 =?us-ascii?Q?Igc5/rtIEjomjmKSUuLvfB7clGMcX/9KS3LRc/TF54QQgP4HkFOsWU2f2wcH?=
 =?us-ascii?Q?1HYx41Y5ZdN2O3jgf+yIvAhRnh5CCN/SyABXuDsyKahgC9Nq7kElDFGq6eA0?=
 =?us-ascii?Q?xQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9e43fd3-19f0-4480-0ae4-08db5b4f5399
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2023 05:34:06.5783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6EKB+o3lJYh1HNKXcYaFWtVAL6OUJIybZ9bvGgUhz1IgWp2ucNv85P9yVAjUnJDrwR8Ldbq/qXDk4/Xh8uaGPC+J/TiPw3qPmP4LKkWZ+XE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8222
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/hdcp: Move away from master
 naming to arbiter
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, May 23, 2023 10:52 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v3 2/3] drm/i915/hdcp: Move away from master naming to
> arbiter
>=20
> Rename variables to move away from master convention to arbiter
> %s/hdcp.master/hdcp.arbiter %s/i915_hdcp_master/i915_hdcp_arbiter
> %s/comp_master/comp_arbiter
>=20
> --v2
> - delete i915_hdcp_comp_master redundant declaration [Chaitanya]
> - use %s/foo/bar/ format in commit message to show changes [Chaitanya]
>=20
> --v3
> - replace i915_hdcp_comp_master declaration with i915_hdcp_arbiter to avo=
id
> any compile fail with old compilers [Chaitanya]
>=20

LGTM,

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 52 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 12 ++---
>  drivers/misc/mei/hdcp/mei_hdcp.c              | 26 +++++-----
>  include/drm/i915_hdcp_interface.h             |  4 +-
>  5 files changed, 49 insertions(+), 49 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index e36f88a39b86..23957d80efe8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -30,7 +30,7 @@ struct drm_i915_private;  struct drm_property;  struct
> drm_property_blob;  struct i915_audio_component; -struct
> i915_hdcp_comp_master;
> +struct i915_hdcp_arbiter;
>  struct intel_atomic_state;
>  struct intel_audio_funcs;
>  struct intel_bios_encoder_data;
> @@ -395,7 +395,7 @@ struct intel_display {
>  	} gmbus;
>=20
>  	struct {
> -		struct i915_hdcp_master *master;
> +		struct i915_hdcp_arbiter *arbiter;
>  		bool comp_added;
>=20
>  		/*
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 19c0b779e435..7d43845d5157 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -183,7 +183,7 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>=20
>  	/* MEI/GSC interface is solid depending on which is used */
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.master) {
> +	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.arbiter) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return false;
>  	}
> @@ -1114,11 +1114,11 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1144,11 +1144,11 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1172,11 +1172,11 @@ static int hdcp2_verify_hprime(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1198,11 +1198,11 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1225,11 +1225,11 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1252,11 +1252,11 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1278,11 +1278,11 @@ static int hdcp2_prepare_skey(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1307,11 +1307,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1337,11 +1337,11 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1361,11 +1361,11 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1385,11 +1385,11 @@ static int hdcp2_close_session(struct
> intel_connector *connector)  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -2109,8 +2109,8 @@ static int i915_hdcp_component_bind(struct device
> *i915_kdev,
>=20
>  	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	i915->display.hdcp.master =3D (struct i915_hdcp_master *)data;
> -	i915->display.hdcp.master->hdcp_dev =3D mei_kdev;
> +	i915->display.hdcp.arbiter =3D (struct i915_hdcp_arbiter *)data;
> +	i915->display.hdcp.arbiter->hdcp_dev =3D mei_kdev;
>  	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return 0;
> @@ -2123,7 +2123,7 @@ static void i915_hdcp_component_unbind(struct
> device *i915_kdev,
>=20
>  	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	i915->display.hdcp.master =3D NULL;
> +	i915->display.hdcp.arbiter =3D NULL;
>  	mutex_unlock(&i915->display.hdcp.comp_mutex);
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 4056bb2323ca..62e7bf0e1035 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -697,17 +697,17 @@ static void intel_hdcp_gsc_free_message(struct
> drm_i915_private *i915)
>=20
>  int intel_hdcp_gsc_init(struct drm_i915_private *i915)  {
> -	struct i915_hdcp_master *data;
> +	struct i915_hdcp_arbiter *data;
>  	int ret;
>=20
> -	data =3D kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
> +	data =3D kzalloc(sizeof(struct i915_hdcp_arbiter), GFP_KERNEL);
>  	if (!data)
>  		return -ENOMEM;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	i915->display.hdcp.master =3D data;
> -	i915->display.hdcp.master->hdcp_dev =3D i915->drm.dev;
> -	i915->display.hdcp.master->ops =3D &gsc_hdcp_ops;
> +	i915->display.hdcp.arbiter =3D data;
> +	i915->display.hdcp.arbiter->hdcp_dev =3D i915->drm.dev;
> +	i915->display.hdcp.arbiter->ops =3D &gsc_hdcp_ops;
>  	ret =3D intel_hdcp_gsc_hdcp2_init(i915);
>  	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
> @@ -717,7 +717,7 @@ int intel_hdcp_gsc_init(struct drm_i915_private *i915=
)
> void intel_hdcp_gsc_fini(struct drm_i915_private *i915)  {
>  	intel_hdcp_gsc_free_message(i915);
> -	kfree(i915->display.hdcp.master);
> +	kfree(i915->display.hdcp.arbiter);
>  }
>=20
>  static int intel_gsc_send_sync(struct drm_i915_private *i915, diff --git
> a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> index 85cbfc3413ee..51359cc5ece9 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -735,13 +735,13 @@ static const struct i915_hdcp_ops mei_hdcp_ops =3D =
{
> static int mei_component_master_bind(struct device *dev)  {
>  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> -	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_arbiter *comp_arbiter =3D
> mei_cldev_get_drvdata(cldev);
>  	int ret;
>=20
>  	dev_dbg(dev, "%s\n", __func__);
> -	comp_master->ops =3D &mei_hdcp_ops;
> -	comp_master->hdcp_dev =3D dev;
> -	ret =3D component_bind_all(dev, comp_master);
> +	comp_arbiter->ops =3D &mei_hdcp_ops;
> +	comp_arbiter->hdcp_dev =3D dev;
> +	ret =3D component_bind_all(dev, comp_arbiter);
>  	if (ret < 0)
>  		return ret;
>=20
> @@ -751,10 +751,10 @@ static int mei_component_master_bind(struct
> device *dev)  static void mei_component_master_unbind(struct device *dev)=
  {
>  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> -	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_arbiter *comp_arbiter =3D
> mei_cldev_get_drvdata(cldev);
>=20
>  	dev_dbg(dev, "%s\n", __func__);
> -	component_unbind_all(dev, comp_master);
> +	component_unbind_all(dev, comp_arbiter);
>  }
>=20
>  static const struct component_master_ops mei_component_master_ops =3D {
> @@ -799,7 +799,7 @@ static int mei_hdcp_component_match(struct device
> *dev, int subcomponent,  static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
>  			  const struct mei_cl_device_id *id)  {
> -	struct i915_hdcp_master *comp_master;
> +	struct i915_hdcp_arbiter *comp_arbiter;
>  	struct component_match *master_match;
>  	int ret;
>=20
> @@ -809,8 +809,8 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
>  		goto enable_err_exit;
>  	}
>=20
> -	comp_master =3D kzalloc(sizeof(*comp_master), GFP_KERNEL);
> -	if (!comp_master) {
> +	comp_arbiter =3D kzalloc(sizeof(*comp_arbiter), GFP_KERNEL);
> +	if (!comp_arbiter) {
>  		ret =3D -ENOMEM;
>  		goto err_exit;
>  	}
> @@ -823,7 +823,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
>  		goto err_exit;
>  	}
>=20
> -	mei_cldev_set_drvdata(cldev, comp_master);
> +	mei_cldev_set_drvdata(cldev, comp_arbiter);
>  	ret =3D component_master_add_with_match(&cldev->dev,
>  					      &mei_component_master_ops,
>  					      master_match);
> @@ -836,7 +836,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
>=20
>  err_exit:
>  	mei_cldev_set_drvdata(cldev, NULL);
> -	kfree(comp_master);
> +	kfree(comp_arbiter);
>  	mei_cldev_disable(cldev);
>  enable_err_exit:
>  	return ret;
> @@ -844,11 +844,11 @@ static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
>=20
>  static void mei_hdcp_remove(struct mei_cl_device *cldev)  {
> -	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_arbiter *comp_arbiter =3D
> mei_cldev_get_drvdata(cldev);
>  	int ret;
>=20
>  	component_master_del(&cldev->dev, &mei_component_master_ops);
> -	kfree(comp_master);
> +	kfree(comp_arbiter);
>  	mei_cldev_set_drvdata(cldev, NULL);
>=20
>  	ret =3D mei_cldev_disable(cldev);
> diff --git a/include/drm/i915_hdcp_interface.h
> b/include/drm/i915_hdcp_interface.h
> index 2059b066f8a1..4c9c8167c2d5 100644
> --- a/include/drm/i915_hdcp_interface.h
> +++ b/include/drm/i915_hdcp_interface.h
> @@ -168,12 +168,12 @@ struct i915_hdcp_ops {  };
>=20
>  /**
> - * struct i915_hdcp_master - Used for communication between i915
> + * struct i915_hdcp_arbiter - Used for communication between i915
>   * and hdcp drivers for the HDCP2.2 services
>   * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
>   * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used by
> i915 driver.
>   */
> -struct i915_hdcp_master {
> +struct i915_hdcp_arbiter {
>  	struct device *hdcp_dev;
>  	const struct i915_hdcp_ops *ops;
>=20
> --
> 2.25.1

