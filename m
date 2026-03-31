Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNFiMhD6y2lsNAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 18:45:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD2A36D13A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 18:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD4310E95A;
	Tue, 31 Mar 2026 16:45:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JZPztqUr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89C1910E8EB;
 Tue, 31 Mar 2026 16:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774975501; x=1806511501;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9zQRxiHsWR/deSk+RSHmC/jgVaR0an/Y/tK6+Y4+vf0=;
 b=JZPztqUra0n2aiv5L65CvyGhqmSDw1rfA2DsWfKsTZ9UFXbDuueVyx3M
 gAgqNfzSZO2x0uY685tJ4tNJH3+j/G72XkrY/+cfradBOhdv5Em2kaf8P
 OxCNU14rXwsK5grlJhlrCWV0V9z2EKxP9Ssi903KJKPPRR1MujSQkpXV0
 LgxdlN2ZZFt8brALXv/pFYlDkQ+ijRW6nrsWD5OKL+iJZY0JQ3CJpH3zq
 JjqmIlLjP9XO6MKi5Su2JyBZYOuNjFkpyecl4QsoYRHCLS1SlLKy+p3WW
 NuqW28Kkx/IqTIo47PF7CXeoLbF5Sowekuy680A8lIzWyy37WJWRddsaf Q==;
X-CSE-ConnectionGUID: yx7Il0ZLQH60IQRop2BwRg==
X-CSE-MsgGUID: vo3tBFAAQDip46H0ELZr+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75890478"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="75890478"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 09:45:01 -0700
X-CSE-ConnectionGUID: OHrH0sScQfCCRRlhbpgfBg==
X-CSE-MsgGUID: PcxgVnoqSSSgh7zV9bUugw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="228020749"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 09:45:01 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 09:45:00 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 09:45:00 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 09:45:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jjU/ZRTtwEuv0+KeWmZl1uCgs2tlG37MlHQOp/9h6g8QT9PU8uERiq0jGgGR3wv2lsXyjPuGaUfptO/neZ4HQLq7D7x7ViH1bVOl8xKsnlON0bpMtroV2A/wIwaAt87eAUP892rEwaR+/rAOUt9yz7I1wYgWofMO5c3BltsF1Ayb7bDZItbkVhLDeEZL0r2zxGtbHnca1WwZBofZ0qJ9di/8jpzdz7cRuEhgql/mCanicJQw+aJt6mNxkkbDqrOFpg9xACSaBjPsMefG5hpJL0jYd0xQhRhUP4UsJ1JPY3VYPnwOGIH9xVbX6/Uu6EUpT6iuHFKgBGnrGMLXEebrKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pXpNY8+C+DZsMRdGpjUYc49vXnIb67xfjtD12qtjEd4=;
 b=JzBPj6Lp7tpN4zciwLYb+T/erLo0CbMQqegXidoPuuq3frBb9l59De6dcjhv+QH8Sksw8pvgXB5VRlYqE86ITBMYK+N6mcspC8A30+l48n+RYhOyJLpixWwMPoJjaRnyokQGu4qCOX1eWEUq6+FyQWDr2WcT9bHreETIAnCle2LBffF617zumqztvFKyWrAYxh0pYyL0FAJL7YYne7LuibS+v2K4Bn8Kz2TyGV/ugXR5uCM3g55yuPA4beLQkKmfiizxSOKKe3pj9GIUDsptqx+XGQcU9SrPAd8yAnWYtRsJiVJThQVxmu+TZh1jq+WoH01UGzdv0PwGlz4tD0HR/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by MW3PR11MB4587.namprd11.prod.outlook.com (2603:10b6:303:58::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 16:44:58 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 16:44:58 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 0/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
Thread-Topic: [PATCH 0/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
Thread-Index: AQHcvXBYjPP74AWdYkiKAG040x9pULXItPAw
Date: Tue, 31 Mar 2026 16:44:58 +0000
Message-ID: <IA1PR11MB646782659EED2B70B0EF956EE353A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|MW3PR11MB4587:EE_
x-ms-office365-filtering-correlation-id: 18025207-eed6-45f2-6f9b-08de8f44d829
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: IW06E9Bg/4i2uPQzUlVFOc3yy/YligsaGOUpDItG2JDAE1cHg+oXMjvTN8+ao+S7nTWO1qH1TfgCto7k1vGf1bgRS1pXrS7z/4ZWAtZgWDmqLSM5zbZr/ZLuBpBrE13gNZoJBfDn/WYPyyHTdbNTONd0rbQIAWfy54TDu4/NYEGzmkdOl7RHRc84MIP9/0zGO0Cq/VCmzLDFJIDuYrq26LRgswtsnaQU2XujnVlB14NysCl/j8aThvNozmib9U2gFNDkB9Ua80PEqGMjKFbQH6726x8Me/N8dayk+tNmVoqISBgjAi2y/WyZ0cMoEll3KRHIRQhHAnlUe9Hsqcu0R8ql9DREBJuaQbxX4VJVt2us1w/ww0B0le3cC9XaCWovHKbTCL0M7Aa+uO0PRSu8yNSVVI3iAxaq86e21Q19VCKiadQOhKOGouhDPutliXJ8wcrt1zp57BedTS0zw6l1YenRXH71y3DANS5KyqKj5Y2qzT2as/ZTJZQixnUYCjSIslW/RSgciJfOFgBLmdK8z4Q77/tljEZp0iwUPH0GYxDIxIriUlXZS0mLwrpPF4sjM6FJ7SMAxzU6F2goUB+QPkgRQx1I3GBmx3FIOhnxT9hOkg59lc5rgMR8c3b0arrjsqHtaeCIxr+/5OMHnsN3qaivL6r3o7paNJ+r1q0MSJWRCsDFbdQWAZuMAfMTEDV6g6B6jyqXanqGa37TVFVgE58agsOvITjzG1gM+oIlN7G5w1c/Xap1iuFKoI6M1eAx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?y2K/hUKwBZ6gd2qWKRzhLcoAyfVui9ktmHt3yrusBHdqc4bvmZZ7ZaraxB?=
 =?iso-8859-1?Q?Zq1U87H5HNc6NiCJ0RQUkxMZ1S3kCvB1stucxbGQcNi7fSN6UhcJo0RWsV?=
 =?iso-8859-1?Q?Ezo9RAyVsqLszUVuD9U8m79e+ByM41vPp8pXkpGoFjJPKvXROnKZBbIbWM?=
 =?iso-8859-1?Q?0NGMnW8LIJvZLSawZhOARM5jaJoEm/+9Z77hj9ld6+XqF+7qdXcjJHn9JU?=
 =?iso-8859-1?Q?AxVrOQU5scmCexnvDL98E2t6GuAym5fRLsgeVtJOtWVgNP1iBeIIVZ2dql?=
 =?iso-8859-1?Q?rvtG5jRHOSbghY0SVFKt+nOQAmXMJw4xR8LvbM1sr1n1sk2cXOHk6eZ67W?=
 =?iso-8859-1?Q?Bf9H4u1Hmi5iVo/iTZlgNdIAJtXudlL5IpoMv3K6xsZTOhN/nylKj7rkcx?=
 =?iso-8859-1?Q?t7NYaS76UXxzecRtc0OLHw9Ckan63WykDy9HF0LFSwZRk+Dxfp+SOK5wGR?=
 =?iso-8859-1?Q?Db37CFO1MIsf1chrHdljiM2H6yLbY52bOEYJY3JPfyK5i0HLXusbquDi4p?=
 =?iso-8859-1?Q?9jdjKhrHggoLzjPCIPi2u/JimAM4icT43rYVrxnZbOiFnJdDal3lbQ8VOm?=
 =?iso-8859-1?Q?YgVJqNrIDUMSnaAMCrRCWmwz8XiddWS7Dw8luJ6Rol9aM/DM1Nji0HJ3qv?=
 =?iso-8859-1?Q?CpaqfgaGRhRDe8YafgWNYQdvTMG0qrevVWvpNzCWjBFcaZRHTc2gGqKH5J?=
 =?iso-8859-1?Q?gLkAh/bUyxRg/Aq1/4d9sFCZFFO+iFGdEtW8wl/zWal0+XY9wAxpHyQngn?=
 =?iso-8859-1?Q?bn9K9AEAghyTyuGssCEb/WTaNA5hXmRDTRfKDZf0uaV+a8BGXFnObA/TDJ?=
 =?iso-8859-1?Q?rZqEWBWfp+PlTQVYUWEFObslSZ5YAHkG/axKzIsmkQPu0EOMbHGQwoHAs1?=
 =?iso-8859-1?Q?7z+X2OBHin9WRbXQRI2cm9eKtXwiijutHx+SA1bIs0iuoTkYZEt1M5cmFl?=
 =?iso-8859-1?Q?GqGoMoH+fA7OUah+DiVsdzEBl3EYn7mFtWAC86Jt2pHhbzn1EHGSuay7lE?=
 =?iso-8859-1?Q?KErSoMLV371JzXOY4QjX2ucl3u+wtXF2Bgxma3GfeY329BxzNewjm/9pVi?=
 =?iso-8859-1?Q?Ka2w4NtNBRQ8twciikJkcvppHJ5GKJdn53xEeap1XD/V4Y+Lftu4MtYIvM?=
 =?iso-8859-1?Q?mDtV3+jhZkZ9hnT5bRBWn9+wI/mYtMBin4eNXfFscSFAcUmvQ9sgK05EuG?=
 =?iso-8859-1?Q?zm18Jz9Xrj3TnurLF6/DGQ+TRvB6xSVnaSBAOxWAipxjmZ1dIb+Gxx8xG3?=
 =?iso-8859-1?Q?c68HsHKlHNyKLP6DS6pguJYF16GECX9hypeHtFxxWA3E2F/PkiQolkX77p?=
 =?iso-8859-1?Q?NkTsYuBnYXTcgGUh/La2KNpmtNIQSai9TYzhzSDJpnAIq1imnDFu0iDanV?=
 =?iso-8859-1?Q?InqJJcdqlR+IoRUvRLoKMkxSB7+BJWiPhKJruLDfnfDGzRAGMed6e5rIcZ?=
 =?iso-8859-1?Q?d7Lj46OFNshzE4DoU15hh1Xa/vCgIrzVtKaevtSo8BXkeiTfL+fBcRLRM9?=
 =?iso-8859-1?Q?RmJ7X5uWqVZ9fojfe3EQK7U3OSQrjoqkTeqKtvX0lBm1hXVhbS8tEFwRZO?=
 =?iso-8859-1?Q?Oq83ygF+l+RffzLcfNkFmbn1XaVfpDeq56aHUBUxiwWnAMkdlruQqiwsJB?=
 =?iso-8859-1?Q?yfExBXxM9OfcWIamiQgqNXueSdR8SEGOLV7H2FRM73JXzGJ74Vm1A/gTwU?=
 =?iso-8859-1?Q?YyExUoPtNIeWl4Nvvp5qPMsj0mjhylPmUeWHAgTLmhWS6pVDKablQa7PmF?=
 =?iso-8859-1?Q?PmjTksUbT4gfbJ6Aw++QMZm1sXiQRfDTI928Z2WMlAY5UnuihYB7mKOZph?=
 =?iso-8859-1?Q?AZ9ft4mRQg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sdjMjsY6WVzWMzEC3CJqlhUFQ0iVy80l7Urvve5vjh4O3rtSOxVaxq2alu5/gZ1MCxepyTHNuliP5KjSHOL6+sSJllD//2M6A737yJo4Pby7+q3n3Fe8+U4SApUA8Iw1yduoR6YeGqzWRrdoXFAwnlcya5XhR1SpHvRNTMjsrbcVF9KE3JI/jmuBpnFjCrSvKKmbJXwabTlQkix4bbUVhFcWTsSlYGpJz0eeKefgMApEL0rruDtL+Idq28eiTN8Fg6fbtcNT4JM3QwMX2FoaUYsJqyFw8Yk/SA8JJmuLw4lP9iS2GyFQGKWNkVX1YtIhHt0NqhuuBpHaVgfX9GZVQw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18025207-eed6-45f2-6f9b-08de8f44d829
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2026 16:44:58.0293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aVdfvATU06iMg86UZlbb4CEhtykEn/2RLfZmCJ8T1weP/FrVJQEJBGuTFk0lHBahYt5FaEchOHkA/OpSfnohMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4587
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0CD2A36D13A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrjala <ville.syrjala@linux.intel.com>
> Sent: Friday, March 27, 2026 4:02 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH 0/9] drm/i915/casf: Integrate the sharpness filter proper=
ly
> into the scaler code
>=20
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>=20
> The sharpness filter isn't anything special. It's just another mode of th=
e pipe
> scaler, so treat is as such.
>=20
> This gets rid of tons of special casing all over the place, and will allo=
w me to
> finally land the pending pipe prefill
> series: https://patchwork.freedesktop.org/series/156137/
>=20
> Note that this will fail some kms_sharpness_filter tests, because those t=
ests
> are basically incorrect. But I couldn't decide yet how much of that entir=
e test
> should be nuked. It seems to be doing a *lot* of things, most of which ha=
ve
> nothing to do with the sharpness filter...
>=20

I will drop this series [1], as the changes have already been taken care of=
 in the current series.
[1] https://patchwork.freedesktop.org/series/158667/

With this, series look good to me.
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

> Cc: Nemesa Garg <nemesa.garg@intel.com>
>=20
> Ville Syrj=E4l=E4 (9):
>   drm/i915/casf: s/casf_enable/enable/
>   drm/i915/casf: Make a proper hw state copy of the sharpness_strength
>   drm/i915/casf: Move the casf state to better place
>   drm/i915/casf: Extract scaler_has_casf()
>   drm/i915/casf: Handle CASF in skl_scaler_get_filter_select()
>   drm/i915/casf: Constify crtc_state
>   drn/i915/casf: Remove redundant argument from
>     intel_casf_filter_lut_load()
>   drm/i915/pfit: Call intel_pfit_compute_config() unconditionally on
>     (e)DP/HDMI
>   drm/i915/casf: Integrate the sharpness filter properly into the scaler
>     code
>=20
>  drivers/gpu/drm/i915/display/intel_casf.c     | 102 +++++-----------
>  drivers/gpu/drm/i915/display/intel_casf.h     |   6 +-
>  .../drm/i915/display/intel_crtc_state_dump.c  |  11 +-
> drivers/gpu/drm/i915/display/intel_display.c  |  46 ++------
>  .../drm/i915/display/intel_display_debugfs.c  |   5 +-
>  .../drm/i915/display/intel_display_types.h    |   5 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   9 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   8 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   1 +
>  drivers/gpu/drm/i915/display/intel_pfit.c     |  13 ++-
>  drivers/gpu/drm/i915/display/skl_scaler.c     | 110 +++++++-----------
>  drivers/gpu/drm/i915/display/skl_scaler.h     |   2 -
>  12 files changed, 112 insertions(+), 206 deletions(-)
>=20
> --
> 2.52.0

