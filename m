Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 637589347B4
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 07:47:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17EBD10E54B;
	Thu, 18 Jul 2024 05:47:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZpPrcJGN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F20E10E549;
 Thu, 18 Jul 2024 05:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721281662; x=1752817662;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iG0uJ20nJYUlA21hjsQgTR8Stcc0/i5wVlrEqkGCmog=;
 b=ZpPrcJGNXVzu4LUL2Vt7NMifjek2Q9Ef8oluKewfaSysq/+ruvRCGgnF
 LwSvtUU+ocv8QtLSwSSRfhomtGUExkb5D/6yUBzRq/yWb+Uq3aPQafdKx
 YFe5a3Q1MmjUtFQLYrDXw7YxzY/OJ95jJPQj19iwhNVZ9fJJ29k5f32GN
 L2EpLEW2kYolW4F+YZrWfQfJ375X7TUgFAxyl/cv9iTunm4CKtVUXJNK7
 PpOLy+ttO+2OcijbbMlNqE7ABkgMVZfg1TKSb3ACLWzlGXvaYN/ANKIgu
 PoUxCcqFDoWwTKYK0DDml9r7XHXwnFfrINz+fPWt056mpono78u3yLbHM Q==;
X-CSE-ConnectionGUID: FsyfWnL5QWuDkhsh1yrEhw==
X-CSE-MsgGUID: PM/1fzqjSkiPM2IJQtIAKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18963789"
X-IronPort-AV: E=Sophos;i="6.09,216,1716274800"; d="scan'208";a="18963789"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 22:47:42 -0700
X-CSE-ConnectionGUID: zGuchBZ1SRm42yT4vPq3nw==
X-CSE-MsgGUID: jf5teMycTeeJ6hfsd0KYqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,216,1716274800"; d="scan'208";a="73884397"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jul 2024 22:47:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 22:47:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 17 Jul 2024 22:47:41 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 17 Jul 2024 22:47:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dFvTrRFyrfCyXa1G+8/X4d2b4aIB+S84Da6ikzeW4aWtpUuCXgjkTVJopneLEqZJgy/wdJ8H0W8fTMz2nhicNl8saJG4Kit2wYdm/7JG7VKJlCezcoLB5U8vvzZsoSGgVyzjGojCR3jLLluUyhcHCRZLa0kOZTg4lTGnCxxs6HezqRBYPXMoc+chwXlqsSauh3v8HlaK18cYdhtV+5Dt+0I1eYp0vfXhVABNu0UfOdITyRN9srue8/mvOQEJNy6fZS5m+C8GwOf0KvepbhvKVZzFb1ew3eLPzkh+f76UpkkvOOEVtuvyywbOxKDVp0/58uwhTuCStGHx9AYAla9ehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WyCxvZD/TpjO4pllBPJrc5rvl2Xv24osrV1b20024dk=;
 b=WOW2D7wopWyZbSsC5/3F5WuprwxHfiXqXbhczUlSXpQ4idvfKytjOFcyE3HhFrshBF07ZRov4X1qbC3ljj7wJldV6DwMM47qgLJV6mOE5sExzQpdIkyycUUO7dL6eSC9mqOwhvNurpSE722FyT43eBics4LK0zerf8HlDQAd/rvrsBRkA5j3ITTtIHq0foYhbMgqSn3CDT8FbJprtafzipKxysOV+kQ1BuXXH4idsCBoG2L5QW8BCwqnQfMbuZDaPrMOob3Mi2X/z1oqHcu2432dsPOe4fKxJN1Dn7QpS53ecW7uOGQ3hFu9QnJNMZoX7RsXNRiTQiNWY/3D0mSzVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 LV3PR11MB8459.namprd11.prod.outlook.com (2603:10b6:408:1b0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Thu, 18 Jul
 2024 05:47:39 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7784.016; Thu, 18 Jul 2024
 05:47:38 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Ceraolo
 Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>, 
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: RE: [v4] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Topic: [v4] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Index: AQHa2CFnRtyEQEupm0qjqPhCZkVrl7H7+0yw
Date: Thu, 18 Jul 2024 05:47:38 +0000
Message-ID: <DM4PR11MB63607A478C14F333B20AE9E9F4AC2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240717082252.3875909-1-uma.shankar@intel.com>
In-Reply-To: <20240717082252.3875909-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|LV3PR11MB8459:EE_
x-ms-office365-filtering-correlation-id: f64b4e78-49f4-4321-b030-08dca6ed2214
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?vF2qGrxMG3s4+0doshNbaxIXz5AXbv1AfYcNUVxPmTL2S+CaTxIDJnwASIO/?=
 =?us-ascii?Q?JQxVwkqOm+SuXwI8yEpRzLAOr5Ban9KSVQW6B2H7uTdXCtiAYaVRqFRKOqWW?=
 =?us-ascii?Q?zq7tePAmHuJP4Y7lobaWRqqtm1CnPRsUr2AfL6XaxihydTJnIe5TBtZtqS4D?=
 =?us-ascii?Q?9suMJoD36wUOhEseMxgvO+EYV2LJY5h6gm85d7ZF7e3/UGE1sRLmRxeAsgu5?=
 =?us-ascii?Q?/YniEx9GoXpOwIRzXkMKnLRl/qxXGk3eU7K8YdP7Zdju49mfzIqUU1H8B7ty?=
 =?us-ascii?Q?QZbbAxEe5OQGP59FQWkvBVhanWd8GWbEbtnFPbwRAxtT7YP4ZT6dxaRyATQT?=
 =?us-ascii?Q?PM8T6qfktMa8AaPGZiAkqH1qDvF0EWc8f1no1j1/VFCD9Y/UdZ1BykdiLH7I?=
 =?us-ascii?Q?ZR6qJryRgpkNDyon5C/xfQBH5KNspKVjp1yQ13Dysu/9BnXQM6LCwyK0AJ6Y?=
 =?us-ascii?Q?3msa5etUSQN+jJfgDh2FFc6y2SPoM4culbSYcI/IPbxKbgQFI5kMJJFqtfYi?=
 =?us-ascii?Q?RxHvYHshjy7207EwWdwCDEHAP5KJL5g7tmAeLRTiwBfamwAAg6kRhRRbIGEM?=
 =?us-ascii?Q?5WmM/a/2vbcpAccsz6ThLfQM0DomZMhd0vpNG/SMiVLHpKS/0LCe2x5q33Rx?=
 =?us-ascii?Q?kkcNU/b3jK4KOarQBeDtR8W9SxWSaukvYGV3ibD+A8G31I++Yd4/kZnH4z0N?=
 =?us-ascii?Q?CBJPPLrph+1d2sdIpA6sy8+KY6Eo1VxqREtl9S90w3hUzbv4dlM2bQbM41FU?=
 =?us-ascii?Q?VYd5cVmdCbB4NjelhN6QXHy4gzfct1ai9mxOi7m8SYW89Fs0dxGEjNYzPPAh?=
 =?us-ascii?Q?dOLf8SXkMsV7yjAzBgLOA6UbiNB5EXb84Gz+tiGhJIEgo2sIyFhlenNbziCB?=
 =?us-ascii?Q?oNMGkKn0hRMnilIaN3+X1U4V068Nwnrw4BtfbgNVyoUs+uCamdiZPVsjTLgW?=
 =?us-ascii?Q?XF6GuwtZJ88kISgXjwa5qS8l6FIwwcUu+qMOQIUg4ErxLKhCHFYhW/TJcRDO?=
 =?us-ascii?Q?+YsL718Cw4Bxgi7JWrO498Aqzx8Uw0QtgVGSuyd7Hu4RFsbbfPj8Gsw8kZSH?=
 =?us-ascii?Q?r+KHyUR0WUPr/6PpPnOD9T1Q/0BWXcgMWHF0buHHMXKGQk7u6YGY1YxRMXyE?=
 =?us-ascii?Q?0f/jkJuhI4SmE+ub50xovHDPPhHbCRT2WIWQ575MOJc/07TelNsacLHmCyBW?=
 =?us-ascii?Q?ijaexMDDaVbMae4kU5VFdEbcDN5idhH+cfMbNmnhXy3ch/683fBpDFt9sxQ6?=
 =?us-ascii?Q?x0QBsbpIBTbRIuZ+TuBO7HwoFEZaVdQvV73X/RTP4fr/khvIPayDMM2x3+pf?=
 =?us-ascii?Q?0H2GU3yd/LSIwI5KBwmxoGU5g1wKHJcIpu2TDYvnkOWSkXn+wV0T+I1Gw0I8?=
 =?us-ascii?Q?7P1ewNpgZwX+Es2j7HdzsQYQUchVprTYTE2bBmC8mrqBolysTA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SxRTJYBiOqbBz416WT2YUygl0qRCejYOLx2MK09Wftz3JKJ/2eF6kDMcxyGD?=
 =?us-ascii?Q?BOxjOJzxo8R1ZR0FxkxoNK+JuIItIlhiDOpRyki0a+obfAKsAohMR8D1AZmd?=
 =?us-ascii?Q?jCEaQ048+QtASK204mUEzn8ZdqI/M9Gnb7bbGLkZr7QZByDZZfNXlImOG0of?=
 =?us-ascii?Q?cSpBzOWJJYyYss4ncRkJm30snRQ9xyzwyKSYhept0dC8fCO5LUyxSX/UwmEy?=
 =?us-ascii?Q?mPx/h4msCd6iGlCeW8wfCk6W2485kDEZlccJuxfe070f0fS6YO/s055Y1rja?=
 =?us-ascii?Q?DKWpgPrWTjG1ww7OPrvogakvZoM4B1pugBcHNa0A+7nhhcLGeFNg/EU99pbo?=
 =?us-ascii?Q?R6O2ItMlfVoK5+91pzOxV9QnrLnufoQKlx+0gZ1/zEy9ZjjgYh5n2vu2oemN?=
 =?us-ascii?Q?vVRaM07ioAb+6vXTFytxdJNyQTk2uB6beyn1wPAC7Lk/VSRKDnADj3knqjLB?=
 =?us-ascii?Q?flIT2KGZ0ZW78SUiuNUGuPygXOGP04KKJ69lvolyKXyE+x6l4nOvgEc6nZgr?=
 =?us-ascii?Q?IBjTn/Vx3vFaPghda6YYXjnJwTQ+7fhNqG6dUV7JKKObyP5R9J6k+IMfAU7W?=
 =?us-ascii?Q?43ce9YtdoyE8ETukzLUJxpsG4GtncIVqQEKNNyE/huh5xU8IyD5ByCQ2NjEE?=
 =?us-ascii?Q?WtvB7AFUGFQeHvPjgNFoPoDqsR3Zwh6VrfbdLUTHXzBSN4ZIu98jS2Epbi1L?=
 =?us-ascii?Q?WG1pWHcaXd0551PiwcsN4YZNScfwrRoxWZZ6nwLWYFHUCud6SH9Tg9bdvQVz?=
 =?us-ascii?Q?IHZ72qEJnn3cD3ITaShHJZzEfo68scFoO5oiZqmVs9eQZmN5bm2Je8SnrTlh?=
 =?us-ascii?Q?GLe8UoL2l5/NdoENQrLLrBeROH1WXOfyOH+LZS0+vM0md+CdOnkdGB1BJdT3?=
 =?us-ascii?Q?ombWfr5WspEwqQDLc3Oc76TOpecVEzvwQuPIE6qcg2ezv4Ep4nwy7aUPSGYK?=
 =?us-ascii?Q?UDC/hHKHzlvBo3D/NZDcf2skO19d+0TI98EgW8uEbgueVhuu+tDjOBWCmNhA?=
 =?us-ascii?Q?SVpomi/avmGl8CJNMZ+yPG42JahiuGt85peeLFmsDfXQIEt1y83MZg/Qbzt2?=
 =?us-ascii?Q?VnCDcHCv7lo5ypHjM0jqbaYX6tOol4nCIvotG3seC9V0qNktNDSSssQ7NJc2?=
 =?us-ascii?Q?Pl1NfxInJbh+uunp/pjpu4Yasa8HBqA5wZDhnfd/Q9Mj3EL9RMrCWU+BMFJ9?=
 =?us-ascii?Q?FjCCXy2wNmldQufgCBgOr+fn5mQ0IvGQajSvg1Vk7bj95hxorWztl6Qn9n9V?=
 =?us-ascii?Q?bRZmynHdIaTXA5FtyOjNCIcxK5HjvLDv2Qqcm+BguBwpUjd0wPe18OUn6D+S?=
 =?us-ascii?Q?f3WdemK5LNdadUcL2TrgbKovePIUts8pFOuJhfT01Lg5D+fvBs+NJUnDcAPP?=
 =?us-ascii?Q?Et3cTLOWZeENeMinEuko/opnToMRgWixAkRzhIOcqKA65+l/bPJHWawXIVCh?=
 =?us-ascii?Q?EHf3XKnm1l9y09QtBdCIFiEpRtoho1gmdySYmPtJlr/F5OPzGK+6W0m7Ehqc?=
 =?us-ascii?Q?gTYCrgWv4H2xUjmLYLMceR5FW3P/kEqoVtwY0mF8hsu/god7gm7mUVWvHKcK?=
 =?us-ascii?Q?0dFk2OrwLNgg1rAnpFQiJn9jsSNMAaGRsQ7G8M6F?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f64b4e78-49f4-4321-b030-08dca6ed2214
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2024 05:47:38.8514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cIbFuqquznC0L9dMVGQR85VaLfesQWdkXnLO87531nSVJxvcaJRPnDOV5HJQwyOsWg9UVloobseD6Gr2y43ing==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8459
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
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Wednesday, July 17, 2024 1:53 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Ceraolo Spurio, Daniele
> <daniele.ceraolospurio@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>;
> Shankar, Uma <uma.shankar@intel.com>
> Subject: [v4] drm/xe/fbdev: Limit the usage of stolen for LNL+
>=20
> As per recommendation in the workarounds:
> WA_22019338487
>=20
> There is an issue with accessing Stolen memory pages due a hardware limit=
ation.
> Limit the usage of stolen memory for fbdev for LNL+. Don't use BIOS FB fr=
om
> stolen on LNL+ and assign the same from system memory.
>=20
> v2: Corrected the WA Number, limited WA to LNL and
>     Adopted XE_WA framework as suggested by Lucas and Matt.
>=20
> v3: Introduced the waxxx_display to implement display side
>     of WA changes on Lunarlake. Used xe_root_mmio_gt and
>     avoid the for loop (Suggested by Lucas)
>=20
> v4: Fixed some nits (Luca)

Pushed the change to drm-xe-next. Thanks for the reviews and suggestions.

Regards,
Uma Shankar

> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 6 +++++-
>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 6 ++++++
>  drivers/gpu/drm/xe/xe_wa_oob.rules            | 1 +
>  3 files changed, 12 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 816ad13821a8..cd8948c08661 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -10,6 +10,9 @@
>  #include "xe_bo.h"
>  #include "xe_gt.h"
>  #include "xe_ttm_stolen_mgr.h"
> +#include "xe_wa.h"
> +
> +#include <generated/xe_wa_oob.h>
>=20
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *hel=
per,
>  					       struct drm_fb_helper_surface_size
> *sizes) @@ -37,7 +40,7 @@ struct intel_framebuffer
> *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>  	size =3D PAGE_ALIGN(size);
>  	obj =3D ERR_PTR(-ENODEV);
>=20
> -	if (!IS_DGFX(xe)) {
> +	if (!IS_DGFX(xe) && !XE_WA(xe_root_mmio_gt(xe),
> 22019338487_display))
> +{
>  		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
>  					   NULL, size,
>  					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT | @@ -48,6 +51,7 @@ struct intel_framebuffer
> *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>  		else
>  			drm_info(&xe->drm, "Allocated fbdev into stolen failed:
> %li\n", PTR_ERR(obj));
>  	}
> +
>  	if (IS_ERR(obj)) {
>  		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> NULL, size,
>  					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT | diff --git
> a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> index 5eccd6abb3ef..a50ab9eae40a 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -18,6 +18,9 @@
>  #include "intel_frontbuffer.h"
>  #include "intel_plane_initial.h"
>  #include "xe_bo.h"
> +#include "xe_wa.h"
> +
> +#include <generated/xe_wa_oob.h>
>=20
>  static bool
>  intel_reuse_initial_plane_obj(struct intel_crtc *this, @@ -104,6 +107,9 =
@@
> initial_plane_bo(struct xe_device *xe,
>  		phys_base =3D base;
>  		flags |=3D XE_BO_FLAG_STOLEN;
>=20
> +		if (XE_WA(xe_root_mmio_gt(xe), 22019338487_display))
> +			return NULL;
> +
>  		/*
>  		 * If the FB is too big, just don't use it since fbdev is not very
>  		 * important and we should probably use that space with FBC or
> other diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules
> b/drivers/gpu/drm/xe/xe_wa_oob.rules
> index 08f7336881e3..540d38603f32 100644
> --- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> +++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> @@ -29,4 +29,5 @@
>  13011645652	GRAPHICS_VERSION(2004)
>  22019338487	MEDIA_VERSION(2000)
>  		GRAPHICS_VERSION(2001)
> +22019338487_display	PLATFORM(LUNARLAKE)
>  16023588340	GRAPHICS_VERSION(2001)
> --
> 2.42.0

