Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C158A9A1EBD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 11:46:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6431E10E057;
	Thu, 17 Oct 2024 09:46:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MuRWAH8U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB03210E057;
 Thu, 17 Oct 2024 09:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729158361; x=1760694361;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mHzxvrtCFuniQywl3COL1WptnrRkH/1CRid/TeJxx9A=;
 b=MuRWAH8Uk0kvbz31/AkvjhYZSf2gJ/ghW6sQ7cIyHlBOmJgD9fvccb+o
 9yV2RUyPINVhXCPx+k1e8NKdGJnIuRa0le7qvCSfVZ2VKXA+Ywon+7R/J
 RztRsn6ltiHiC3aO3HtaOj+4NXtiRCZn5SQ8Psm7ZPDy3sGiJDZ1O/NW/
 DZjHVXH4kHtSk/+Urr95R/SzuCSUeDk3om2bZ6C/CnDbWEK+9ycrIiAhf
 OZ9RCz8em8/zEpBhkpQRnxGugD7tShTBn8t6rkBuTLxyFRU7uybYtpZuS
 3+ir94Ru8sElU7X5nO9antbyjyIIZqvQY/XwpOMh494toxpbnVr4JGKWY A==;
X-CSE-ConnectionGUID: mwU3IO4+SMqnwH0eFcRWUA==
X-CSE-MsgGUID: 3j1lZ3XqSyOxp8n5pmSVBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11227"; a="46131196"
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="46131196"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 02:46:01 -0700
X-CSE-ConnectionGUID: RZC0EA79RKShxYCdZ3a+Mg==
X-CSE-MsgGUID: OgSLzfF2SKGBjrQYTa+FGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78155710"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 02:46:02 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 02:46:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 02:46:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 02:46:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T7UdNwzl6oa0lOORAyMQU7Z3MCaxpghYNT8W6kD7+NDOuuKnKdwRtz3B1l2XQbjN/6pF6GeJI12CqprC5Ba14B3Yt29Lh2DBw8iUrBPYjCuzGsD+TjHnAUhC0jnlbK4nGGvhBVo/77cihPAOEm/86WL2XtL3aRRnZ85Mf1K1UTCEZeFXN4kiJs8vX+fw8wD31bV4poZRkQF92nk9EMTl3mHcIJoTlrgfGsgDW4UYHWsLTWhruV59BYd23kxCvfIBDMoozvmr5OsejRDzmvLRY2FEh/DS2U/rdvnj5zxgqtFlM0Q/W9OuC+uxZGjbMaRCvHmTCjEiG3XJgW03YvZ2wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RWZOX0z2i61/ltr1y1LJdZNYGMErAyo4prxdINKmhIw=;
 b=LMInz5pxOnE5MnpvR+4dORtm8pILopxPLUTGpYVh30nCURzVWY5QCNFRY8HXtco22srrqV0Li7Qh1XW4EDAqjMiJgjwyl14K9OCvbi+lxRCh8TelL1OWLp1B/+7EhJ0vgqCpVa8VowNPSEkEfOApbcaq3zGwHLFg86zkKRLnGhozEfog45oCbr5un/H6O4hCDK9xi0ObMkMgi3RsJR+xcwWDf6LBwrhwfEOhsHqJ7s+Ewh/5gyUqGIZkbm8p8N7GDFlEm9vyFqTRMBOHOZPS/H/Of1QpD8KvNP09uhlsTdRhd+6L5f1yII2t2yV/3e9SsDzXk4SIM1UsT2JSV4jRUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB6696.namprd11.prod.outlook.com (2603:10b6:a03:44f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Thu, 17 Oct
 2024 09:45:58 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Thu, 17 Oct 2024
 09:45:58 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 05/10] drm/i915/dp: Add check for hdisplay divisible by
 slice count
Thread-Topic: [PATCH 05/10] drm/i915/dp: Add check for hdisplay divisible by
 slice count
Thread-Index: AQHbIG2uEDugSxOL+kuQQY+jaksnrrKKsb5Q
Date: Thu, 17 Oct 2024 09:45:58 +0000
Message-ID: <SN7PR11MB675034529A6EF25AE904FC13E3472@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
 <20241017082348.3413727-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241017082348.3413727-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB6696:EE_
x-ms-office365-filtering-correlation-id: 5e7099a4-6278-4098-ab5c-08dcee90811a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?T+LgG5fCsMjAfrnd4Y+1A0/pscfK8GoAh1e8nuA9SW4fr0iTJ1eJfrfuIBR+?=
 =?us-ascii?Q?tOt1sc2r30ZOpyGWTZGrWsyz4VmEJW4GTRQT60CxF00Kjj6S1m/1EN+Q/rNQ?=
 =?us-ascii?Q?wlGYo6PR/+S5wUo+0XAJaLFULQb0ps6Khu9ua03VfM1dSKgEq0gzd4EbIi0i?=
 =?us-ascii?Q?aPoUmK3ghzEs5ZINo06VkMVIP15Cy/ZaK3YMqk6zF66jnuzImCoVn2a07EQD?=
 =?us-ascii?Q?/CxIlCGsn7oQf91ohiyi0sUVxoBQYoQ45Q98Vlo1laX4IBQhCPr2XB8a35CC?=
 =?us-ascii?Q?fspVHWaD6nG9jx4v0l/snl5x23n8WsNXawzwt3m0+/+KxV7FXT2jp6Yr6faB?=
 =?us-ascii?Q?C6UsV7SzVoeIfoBdt8QWcCGmO6ZKXNqswxlCzjLCB+TVVWef/LZ4ca0e6U3B?=
 =?us-ascii?Q?YcOd0+I4ffPJmuj5MViCWNYdTaIc1XkJgEHMxAbEfZpEfmYCpP41uS5Gr08O?=
 =?us-ascii?Q?U3mm9eGLi512+pFVJ758ePb1XTpUiWF3Lzmts8FBYcOx/BeQ511vVW0rhnPu?=
 =?us-ascii?Q?GU/voLV/lBGR3rakb27gMrAtSjDlW1PJOqN05r7KCjS99FfcENssfoqf99Aw?=
 =?us-ascii?Q?SPS8nGoswrUslHyNPzrz3FlblWCcmolm1+Ikka5mT+xUojaJuTAsswg0e92d?=
 =?us-ascii?Q?aIblv9Nn0ESEq1nbc/9pdwedVTpP1Ol7nab/4BQqaycplHotmZndehQOMICX?=
 =?us-ascii?Q?Xo9hkrUsD7fVEE99+5whtIlhmBgeLdGx4L0dr4W/TcFn99BzgNiROGUQy6Jc?=
 =?us-ascii?Q?rkjiD5cN63XnOohDg+sp55VKkjDWIX+T4aJX0oTPP1/pb0dxhy8lFyRSvmFo?=
 =?us-ascii?Q?nBIkNBzBeB2MzUbVkyOOeUfrAXxKV3F9s455lD834DoZMDQZxSoupP6ANOOR?=
 =?us-ascii?Q?3L33EoCN2FaBB0R7AsheH6UMnHpAQqYSCqdYaf+KQ1RuCbpldZYSYHga6Vgm?=
 =?us-ascii?Q?3hqxapXqKBX5sWu8IwzDn/Xc8L53048yczjIpx4mdqbhs3nelDvqkUKI1FXo?=
 =?us-ascii?Q?zIGNWdr8shYVev4Ka1CzSbou9b5tIV4RW0nOsnozCfL3zMzG+AvaO4UKRGbH?=
 =?us-ascii?Q?r8iw2yFTnIBDn2DfqZLd97voOJhHnQ3Pa46qyFpTiQVp/ebnWu9ZoCbPJJzA?=
 =?us-ascii?Q?VumQxr44JtvRDbLwJwYtVJK8oF3gIcQJTS6DaMq+pUONBSs2FR359Q+Xn1KA?=
 =?us-ascii?Q?oZgCF1r+MzFmU8BXdbOEc/sVXDh0aGvLp4WAi4atDz/r7fO6hCNsneSvx/8w?=
 =?us-ascii?Q?0n84gpg37sPqPOp1Ga7natVzBqQzqTqOhn4ozCutzTtqq8Hjvr1AvpOsX3dZ?=
 =?us-ascii?Q?oUlzV1mqjzBjuDFIT8uY9sWEYSILju5ZQdPCwrT6W61Ef/Q0Se/AdbrZddGu?=
 =?us-ascii?Q?j9RZxuc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5mJBB9du+O/uD42dTvD8h3E/xV5Y+apgyvjHBdJ7DfZWwN4+HVWwvfE7opUj?=
 =?us-ascii?Q?BEJxYC/c4LXUJ9nDV/kvCXjC4gdtWQMF0CHSIB8+LlsJk3gNCrzxzoHLkaNx?=
 =?us-ascii?Q?x4zoeMw8tDalUM0HCzfR2KZg2a2g0ss8JwGRoJFdnrJehiHXRYLcPgwAtq3Y?=
 =?us-ascii?Q?bc+UfULNZrBedeE6T/5YaJCHnt405UgbwgZJFxJps/FDVT8R7Eb9YSqAV92p?=
 =?us-ascii?Q?lu2GtKiQ/0Q1UaOtBk5d3j2MDhR535tzCyNUIL1Q9kA7uwjTYpVCzXE4eVoS?=
 =?us-ascii?Q?Gj5Pdvn3q+hlID5MYubxADClRnBhD9EWECyFKxlZQYx/hjMbFC1b5fzSV1wS?=
 =?us-ascii?Q?mmLFKQ4zRMYCN0DjtvZs48LrX8kbsC1mL89ZI6LDDrduue2mD1Prk5H6/Lm0?=
 =?us-ascii?Q?89SDtZ0+8xIpLOJ1UZsIkiKk0BN3KqetB5b8Y0nupz1YisXTbfyJxaXf6ds4?=
 =?us-ascii?Q?6LrxDL0qj+ebqWBt8jV02aYdrLYPNNw3b7V4skrSr0xCGG8fdQAOs7SyUul7?=
 =?us-ascii?Q?rTKda++i3Ij9QRvWAShotu9mFrQuBoMQWGH9n256so0PVgk4Px/vTEtKqApA?=
 =?us-ascii?Q?SzSTSpTmveYreIPum3GRikUgsCRZeW2JHFYaT65pPgHonxupMmIQMbJeMZGR?=
 =?us-ascii?Q?hUKzBtuIXU8nONtItgR6i8ZohdMzcvEgeJGnA6QhZTgYW2JCqtv1Dqa/d+iq?=
 =?us-ascii?Q?ZhJQt8QOR+rF9satGDBahelvq0r5Ph/5xqbSbCiuuhS4xe2nVAsn7GnOxwMN?=
 =?us-ascii?Q?T9wGWl+Sfoynq55DrXkfpafXO3uL3iUOtOo2UrnRXhMTPhgJ/xsOQLjeus4q?=
 =?us-ascii?Q?p50DxSvdIB+WHk3e6bczopzFBN2MQJ/KzNsb1pV2pDsddZUFvA8vZRZyZfmY?=
 =?us-ascii?Q?aI2V/kh5gz9FTvOdmUxv6MfB7DWezhBiklFejzYb8Qs7TQ8feBW1itQMbivn?=
 =?us-ascii?Q?WFKc7m+8+z/8b95TnixUm4pdPj7/B6ojEpAClYyYvSlZ0tYSNegqmMfWzhBq?=
 =?us-ascii?Q?UxYHkpy1KK7OvXzV5hNIj+WaHqUhQodAtUuiIr5kEc0CXsBezQTI/ZwiYVP3?=
 =?us-ascii?Q?aVX/xmwG3jYAHrP1eO/OiNrzq5bQqZl8p/noo/6yIF/sdB4oMq/Q9dBBxXKg?=
 =?us-ascii?Q?k13i28h0vGOS05MrQvaKE3TLHVk9V/qrhnujgxEsMxwOeXFCMd0IjpeinKLB?=
 =?us-ascii?Q?NB1Erh8HQiK3+a88Ec4at05lsElPN29QKHOOoBEaUbkFX225lbDn2hTHkbS+?=
 =?us-ascii?Q?OL0pH4easUM3PvbhzA7+1X75XUVlauaTeh1YjWTZUg1tHgsvouiLKFWDwbE7?=
 =?us-ascii?Q?QtHG/yOjBh8AhQtl428u5HsqpHsXwlL47QJ+KsyTECoyi7qvtwAgrzmTyWIR?=
 =?us-ascii?Q?AnHzhw7LFBOoThixjawGWJSrE56ZkHpX6R0Em1bDZ+TJlRNqJdJ1Uz2TA9WY?=
 =?us-ascii?Q?eZhzr/2FYP0LKJQOfxU1f3+rEJNduspKg8vHqiJzXcnN+LybTPpkgaHHWxzT?=
 =?us-ascii?Q?rSutJOaSGQoupxvGupP+uWFSXmOOlFW9H+a9ZXCDItH8QUlotdQHJCA87dnv?=
 =?us-ascii?Q?zD2G+54oV0tQ5GZ2y1TJqBAdOpgtDU9z5HNpv0Hs?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e7099a4-6278-4098-ab5c-08dcee90811a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 09:45:58.8134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VZdAyWowsoLo/Kfyp/ZVQA+EZIOFgqEndM64DzhxhnB5raiZEMrK+msMBSnYnBBX5UbEHgiUfaTqDcYIIA3CTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6696
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, October 17, 2024 1:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 05/10] drm/i915/dp: Add check for hdisplay divisible by s=
lice
> count
>=20
> As per Bspec:49259 while computing the dsc slice count, we need to ensure
> that mode->hdisplay is divisible by the slice count.
> This check is there for DSI, where we select slice_count from bios, but i=
s
> missing for DP.

So a Fixes tag will be needed here if it was missed

Regards,
Suraj Kandpal
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 04d22f0c1524..6cfc7d1c96ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1031,6 +1031,9 @@ u8 intel_dp_dsc_get_slice_count(const struct
> intel_connector *connector,
>  		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
>  			continue;
>=20
> +		if (mode_hdisplay % test_slice_count)
> +			continue;
> +
>  		if (min_slice_count <=3D test_slice_count)
>  			return test_slice_count;
>  	}
> --
> 2.45.2

