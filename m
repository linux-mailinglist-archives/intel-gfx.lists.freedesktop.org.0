Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26139AE13A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 11:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4646310E8E9;
	Thu, 24 Oct 2024 09:42:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fSj1/avS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE6B10E8E7;
 Thu, 24 Oct 2024 09:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729762969; x=1761298969;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yii6RHGeVFNYVi+qXmVe7LCD70oAfrqoKfr14pHoykc=;
 b=fSj1/avSYbKbDtLO5tAbjn1PhOMMLoJxc0LFbqK6iZBjToEZSKwYiZcf
 BqJJSG1mHcyVLI41lCU3gC7YMFQ/m8pRCmIEWB0jy4SuG5Dr0qQF5f9/X
 bYmA8ZPw6/8vRD5a3S0FICUNrQByOc6Mz2x4IcJBt8yG4Ik2UhsVfUdHR
 Lci2mNKmWaNifHrNKyd57UOMToDQxBG0L/mddBB4LPSIU2Xbu9m7nTQlN
 GpqYdn2/kPbCbVq5xvxnLnXBjWkDOguk2fkNX0lU/yGqNqXIiKixIZ10R
 yfD34MNbxSucCSxx/iKGtJz9qX+sPQwq2jdDHoAhXKdpRoCyx9A4sgogB w==;
X-CSE-ConnectionGUID: zoaUwU7pTJutwycVEWF8mQ==
X-CSE-MsgGUID: 0bLRHfDJSFutS/yb2v3lzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33072467"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33072467"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 02:42:49 -0700
X-CSE-ConnectionGUID: 21J0h8l4RlqignziYHihcw==
X-CSE-MsgGUID: my0ZDUkaQf6NdqQJ3VRwvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80201904"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 02:42:48 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 02:42:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 02:42:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 02:42:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yfJm3MZ0nKiqzn16/7p7v6d0uGuusgbFJajpsgI3vBLabI11Hvol42zs2eEbY+2TSrd8b2TUbLUqt9ZYXpqMA+soH1TmHGCXA8pFfpRj0XLX+zonZDg+c5xPAPQ5pExliDaGXIAMiYhDew66aRBCA7dLtiIM0A2oW8080RfOP9qamVELgkVukGGSJa9lYSbQcAmx+heRzp7zoqluiSEnL/YV++PtD60j5MeE+s84h4rxu6YhuGv0h9jSoiQoUXW2HD0Nhmle2Qv5m8xTZHn02WqvZGpxZxXyYxUWaHTAc4JwnsMLClmNc8OZZpwo6Qn8HYhbPa0Ka8nPVJylY3qEHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oUt42UaLFwlVR+5+Xq1+tE3tAdgTXPvL5aJCSC5Es1Q=;
 b=iI67ad115N3fJvD+NrRpz2AB4R6C/pMBO9QC/ORxw/BFa8bILfdXOYWQqYxEz/cNSQd92JxRvO775zYy8Vj2mtq4WuBiZWDxAPVJwQI4OVAFlg8Ic6bgdZ5CovbNFTyupsWs3P9XVQGmUOVdkx45LWRIuzzRk7pYdwZfvXDBM7oXYqchXg73nKF581HZDNkmBt1fGy9pXxS4BL6rplHzDV4YYi0j70pR3gVYZt+3z1/5q4FQiqB6pHrmQqz+XHCRVjwGAZAuodgkW9xtfze3A9Ug8Dam11xCPaH3UYAC/WFcA+7cniITCmKVh1o6gSLs7mucRzHmGeSDoC09X4DHCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB6955.namprd11.prod.outlook.com (2603:10b6:510:206::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Thu, 24 Oct
 2024 09:42:45 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%2]) with mapi id 15.20.8069.027; Thu, 24 Oct 2024
 09:42:44 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [v4] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Topic: [v4] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Index: AQHbJdwKES0ZWWBKa0Wfls/iLfQAP7KVouIAgAACatA=
Date: Thu, 24 Oct 2024 09:42:44 +0000
Message-ID: <SJ1PR11MB6129C0E7A26CCCFF126E1C91B94E2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241024061002.4085137-1-chaitanya.kumar.borah@intel.com>
 <87zfmtsvad.fsf@intel.com>
In-Reply-To: <87zfmtsvad.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH7PR11MB6955:EE_
x-ms-office365-filtering-correlation-id: 6590f177-32e8-413c-fdfd-08dcf4103665
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?oT4bImGVvTzd9hXIXUlSl1jdNwisabRrz/161kk+X2bIlPl8vLoWn6h3TaZ+?=
 =?us-ascii?Q?/qYSGrwJ3MV64E58vPufdsQNSr6WeoVaV6wLvbaCk5HciB2ZXEIHyKfw7ChS?=
 =?us-ascii?Q?2xtsozilMO7cqMINGNvk9ZvNMtSSIi4kYjW7IQrsLL+nQ6EOalX/VdjU4spd?=
 =?us-ascii?Q?5fjzDJENYdcUPpAlfdvRYAjppNVD8EUUIff4No6hd5xlPURBE0Mnvjrizf+8?=
 =?us-ascii?Q?gRjA+KzPgtkalnw1HInASDjw3Mc+K+pHoJVCiIcMQ3fqnd3JdUL29M4a3gvt?=
 =?us-ascii?Q?6fPrioFEruCndwUqvz2N0NXFWOP958ApqvSy1dmNB9A7CUaZH4MtOR862I1u?=
 =?us-ascii?Q?TmIbvJLiH2SR7f9Up0t4xm6RPeYkyKbUcB2Sz6Lb4upsYg+QDMa2/uJzS7E7?=
 =?us-ascii?Q?WuHdd21WsJUcCTxnY2ixGQjvMzc+yN2s5TuYuWwhDKTGZ2wOheam9Z89ktcV?=
 =?us-ascii?Q?GK+NLYFC/r/CXNwXAjIKeNVTTgiRzb/3XVdigabgRc7KeOanXWLHUo7LcNkJ?=
 =?us-ascii?Q?clKpp92btcuro4Hdi2leI6+u5UlPoLk40KFqNPFGObGwi//QFfARIlK95WAJ?=
 =?us-ascii?Q?EdWx5MdyHJjjwkeEPWsoRILKEgYQnuoauuJusb0xdBL94H7+ByliX+bwR7h+?=
 =?us-ascii?Q?w75VcIsCXPagmP4yI2twujHK00Gj06C0+GHJJ/ptx9/AggGeoV/dBwkWlskY?=
 =?us-ascii?Q?dr54RxHcDmoY3J5Mlt2qFGWSpgjqHnhZ+LQ/1Oc2QlZ1BfnX1uw6XXdspCbS?=
 =?us-ascii?Q?Q63nSz5VwZbTiMDgFA4FwcNKhDzSuF2Y+myBpkv0qbImENZQRAqwuSn6Saf+?=
 =?us-ascii?Q?vf5r0Jc4+nGLPG32VG7l35n2vdXu1r+EjilredJP2YocM/l0/Ud5jxri0d8U?=
 =?us-ascii?Q?uGerNfLWIkJjMRHSeG3RBgKVG3XMjuoE5DuZYa+Vb892bM8nVlZWaf78XboJ?=
 =?us-ascii?Q?SJHWZJCvdClLH+EwZ9u8wh27eXVN75qsWOQVFNM7CEl4OtW2W5Zx+94oFOgw?=
 =?us-ascii?Q?nvOynSshSRjU0PttNq8V/wI9FMowd542isT/kSTv5Xuale7At4FZbLwDw6Mk?=
 =?us-ascii?Q?thegRHvDKb7zZdeokm4xwrrnkQRXllYKwl+od5ItJdzOl3k4pb6W9ncI4pmi?=
 =?us-ascii?Q?wdHD05u9CdA3o185/yoyvKnyMAcaBRfh1iny0UhjQsmrO3UM42SoS+ci2OIe?=
 =?us-ascii?Q?2DdLKTre8I3rQKjZTnVlcAymsUk/UZtKzJazwGbNC79wlWahM1MUPVo4/6pL?=
 =?us-ascii?Q?8OULL7BThMkgwDl3dMjBrWrWMDVu+0D4D2eqNQ/qXgslLc7MPey2GtGyF1YP?=
 =?us-ascii?Q?gMQOMNB4su+pA0XeUBcSpstwnZ4EAiaBkhqbJ5HC2Xf/7pBVIpWal2KPOJ5B?=
 =?us-ascii?Q?1yp56Wk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c5p32KtiAnnfZ+yI2tV/y/kMmBXIkYY0d6ysXb9xOwZI4rFzn7XKiBDpNTei?=
 =?us-ascii?Q?d9U2YJ0jKpE9RwpyElLj8q/RjjNqow15mhVUpyOYj6eLHHW1e75GfE+Qa0WN?=
 =?us-ascii?Q?Mza4R7kpVOEyjWBBpfGm6x2GGuBvk23N9RHodw+dxgABbRuecWIzBAX07GRI?=
 =?us-ascii?Q?z285UHqzjGKbrhvjveadND21cvChA6sCaIWHUS+W7JWDCGIZfApdWE1QyU+0?=
 =?us-ascii?Q?trnnGMWcXigXdh61j/Wf+xRxo5CFIAHy+i9tmgGpg1jzRpEqLYegXY9ZMDiD?=
 =?us-ascii?Q?eImPuMIYS7bKpoeO28gOWYjkl04UXhhwpzP4AAAJvi2ix12VvyoBmeIc60U6?=
 =?us-ascii?Q?vi7lqibkL8Q0Z39lfM3SFw7CQExyidPpodtK7mfsWLDcTaJeDCJbEPSe5q1J?=
 =?us-ascii?Q?Usq7oSuAMYN1GDIJDT8MGaBeSKYThZ7tY6k9+NFJpfHEQ5wSjKloZ49i2q3K?=
 =?us-ascii?Q?DQVyfLEBqXTtH946E1IKpXbTI+UimpHFVQLDJF5iJq9ZE/9o/vQPa8yS9MCI?=
 =?us-ascii?Q?RQpxNIYCsYuP5lO6LTAlnC8VqVNBtVlEj6jZmycRbSZlBVLH+lbNi41sltd9?=
 =?us-ascii?Q?8DH1NonupjNHj+rhjsqgXjOm+NRGgJLiNA41Tb/cuXFQUWK0hVEygrEsfzlI?=
 =?us-ascii?Q?s1VRuxUNdPcS2LbhE4ZYnDngahwJJ8rxVQL+dE+VYwhdRswI11OzjAJseFKR?=
 =?us-ascii?Q?wv9VAKoPHjzI9/iv/C3Hoo5XGS+xDvk4lURvtsBtsZZMbkvN3xwasbMTrCn3?=
 =?us-ascii?Q?vgYuBkKGG8Z+acG+vlbynt80LWlhaNyLZFV59sHZy4a1CcJ9CtT/tQcVfWbF?=
 =?us-ascii?Q?oCsMnangS8iZzOBXORJNQs7H+ObeN/b/oNp6Rz4SvS/QI89vu5LZcsyQcxjh?=
 =?us-ascii?Q?BgVrYtozyy6Skz6o9LfvqfWUw0BL4O+WJYp8kGi/5RfNTZ9yoMTzpHPTXpmN?=
 =?us-ascii?Q?GiryQbt6GXi1JxMVAZ/N/MIk5/kUeqyX61QhKU9oG5hWP3O8cbNE1U6Noutm?=
 =?us-ascii?Q?2OhP8XgRtRqitFktvIusBdhLfgp9zFJhf2ZbWzQhmEDzfKxFA1E5dwetTWPz?=
 =?us-ascii?Q?QXiEGuItwRmBcjWvo7UNnt1Tu4SojlXgMybgSKJHNfDffwFSsxnrYssq/TIK?=
 =?us-ascii?Q?dL7SRVWRJ6YOwpBv52BjzBjRdupXgn/SbxFiwJRDy8xIGhe4CnCSsG9i+Mz6?=
 =?us-ascii?Q?weBUq37VtDEMR9rj1h6WEAqGhCZRV5Xx3a3JvjZlVsJOo4+pvTp67pap2OmI?=
 =?us-ascii?Q?R7ra8H+SszTDldIef5/9nD0vaUIinc7FEsuU6z0nq7iqj6uaECrENK2KXtDq?=
 =?us-ascii?Q?f0lCiABssZV2HuHHvdd+25hu3iP6vR+MdE7c2PHKQQ7Idca01Nzom8QD7lBw?=
 =?us-ascii?Q?lL+Nx3oHZ82E0j9Q3obesG4sq1sZTeVBEcmCdokX/l64IcyF8X70b9Ob87JY?=
 =?us-ascii?Q?ZGJs5AoseWTJSaDZY4VfCkALH2KtyFAd9DyJtT8bWnA3SxlGykBz7tMCqv2G?=
 =?us-ascii?Q?ew2WUhVVmrYaIZ2hdPGHwMYhC1faL1vGsi886geWerVpPJcR/cvgD1aH1yyi?=
 =?us-ascii?Q?OsGtlf2iLxc4/vbH9rAObkYj/7A2Uy22FMsq4EqjuhOUt8FTUlNfV0svHQ4J?=
 =?us-ascii?Q?6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6590f177-32e8-413c-fdfd-08dcf4103665
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 09:42:44.8678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 79JTIj+l2afbNssWt5+TzVGTrw1bOwOQy72VSVDatKVGR4jwQe1sDbUdQCYkYJe7hVQXLCQJT+YtY4X21NDIXUnbHqy2eXoEi7YAwu3pPko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6955
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

Hello Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, October 24, 2024 3:00 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>; Deak, Imr=
e
> <imre.deak@intel.com>
> Subject: Re: [v4] drm/i915/dp: Add FEC Enable Retry mechanism
>=20
> On Thu, 24 Oct 2024, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > Currently, even though there is a bit to control FEC enable/disable
> > individually, the FEC Decode Enable sequence is sent by the SOC only
> > once TRANS_CONF enable is set. This ties the FEC enabling too tightly
> > to modeset and therefore cannot be re-issued (in case of failure)
> > without a modeset.
> >
> > From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent of
> > TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
> > sequence without a modeset. Hence allowing us to have a retry
> > mechanism in case the DPRX does not respond with an FEC_ENABLE within
> > certain amount of time.
> >
> > While at it, replace struct drm_i915_private with struct intel_display
> >
> > v4:
> >  - More code refactor [Jani]
> >  - use struct intel_display [Jani]
> >  - Optimize logging [Jani]
> >
> > v3:
> >  - Make the commit message more legible [Jani]
> >  - Refactor code to re-use existing code [Jani]
> >  - Do away with platform dependent FEC enable checks [Jani]
> >
> > v2:
> >  - Refactor code to avoid duplication and improve readability [Jani]
> >  - In case of PTL, wait for FEC status directly after FEC enable
> > [Srikanth]
> >  - Wait for FEC_ENABLE_LIVE_STATUS to be cleared before
> >    re-enabling FEC [Srikanth]
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 81
> > +++++++++++++++++-------  drivers/gpu/drm/i915/display/intel_ddi.h |
> > 6 +-
> >  2 files changed, 61 insertions(+), 26 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index fe1ded6707f9..ce95263d74ea 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2256,9 +2256,9 @@ static int read_fec_detected_status(struct
> drm_dp_aux *aux)
> >  	return status;
> >  }
> >
> > -static void wait_for_fec_detected(struct drm_dp_aux *aux, bool
> > enabled)
> > +static int wait_for_fec_detected(struct drm_dp_aux *aux, bool
> > +enabled)
> >  {
> > -	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
> > +	struct intel_display *display =3D to_intel_display(aux->drm_dev);
> >  	int mask =3D enabled ? DP_FEC_DECODE_EN_DETECTED :
> DP_FEC_DECODE_DIS_DETECTED;
> >  	int status;
> >  	int err;
> > @@ -2267,57 +2267,92 @@ static void wait_for_fec_detected(struct
> drm_dp_aux *aux, bool enabled)
> >  				 status & mask || status < 0,
> >  				 10000, 200000);
> >
> > -	if (!err && status >=3D 0)
> > -		return;
> > +	if (err || status < 0) {
> > +		drm_dbg_kms(display->drm,
> > +			    "Failed waiting for FEC %s to get detected: %d
> (status %d)\n",
> > +			    str_enabled_disabled(enabled), err, status);
> > +		return err ? err : status;
> > +	}
> >
> > -	if (err =3D=3D -ETIMEDOUT)
> > -		drm_dbg_kms(&i915->drm, "Timeout waiting for FEC %s to
> get detected\n",
> > -			    str_enabled_disabled(enabled));
> > -	else
> > -		drm_dbg_kms(&i915->drm, "FEC detected status read error:
> %d\n", status);
> > +	return 0;
> >  }
> >
> > -void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> > -				   const struct intel_crtc_state *crtc_state,
> > -				   bool enabled)
> > +int intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> > +				  const struct intel_crtc_state *crtc_state,
> > +				  bool enabled)
> >  {
> > -	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev)=
;
> > +	struct intel_display *display =3D to_intel_display(encoder);
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> >  	int ret;
> >
> >  	if (!crtc_state->fec_enable)
> > -		return;
> > +		return 0;
> >
> >  	if (enabled)
> > -		ret =3D intel_de_wait_for_set(i915, dp_tp_status_reg(encoder,
> crtc_state),
> > +		ret =3D intel_de_wait_for_set(display,
> dp_tp_status_reg(encoder,
> > +crtc_state),
> >  					    DP_TP_STATUS_FEC_ENABLE_LIVE,
> 1);
> >  	else
> > -		ret =3D intel_de_wait_for_clear(i915, dp_tp_status_reg(encoder,
> crtc_state),
> > +		ret =3D intel_de_wait_for_clear(display,
> dp_tp_status_reg(encoder,
> > +crtc_state),
> >  					      DP_TP_STATUS_FEC_ENABLE_LIVE,
> 1);
> >
> > -	if (ret)
> > -		drm_err(&i915->drm,
> > +	if (ret) {
> > +		drm_err(display->drm,
> >  			"Timeout waiting for FEC live state to get %s\n",
> >  			str_enabled_disabled(enabled));
> > -
> > +		return ret;
> > +	}
>=20
> So the functional change here is that we skip the below wait if we timed =
out
> above. I think it's probably fine.
>=20

Since we're no longer using the crash-and-burn approach and making the func=
tions return values now, I thought it would be good to do the same here.

> I also think the patch evolved to be considerably neater than the origina=
l.
> What do you think?
>=20

Agreed. It gives me framework for the future too. Thanks a lot for the revi=
ew.

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>=20
>=20
> >  	/*
> >  	 * At least the Synoptics MST hub doesn't set the detected flag for
> >  	 * FEC decoding disabling so skip waiting for that.
> >  	 */
> > -	if (enabled)
> > -		wait_for_fec_detected(&intel_dp->aux, enabled);
> > +	if (enabled) {
> > +		ret =3D wait_for_fec_detected(&intel_dp->aux, enabled);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> > +	return 0;
> >  }
> >
> >  static void intel_ddi_enable_fec(struct intel_encoder *encoder,
> >  				 const struct intel_crtc_state *crtc_state)  {
> > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +	struct intel_display *display =3D to_intel_display(encoder);
> > +	int i;
> > +	int ret;
> >
> >  	if (!crtc_state->fec_enable)
> >  		return;
> >
> > -	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> > +	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> >  		     0, DP_TP_CTL_FEC_ENABLE);
> > +
> > +	if (DISPLAY_VER(display) < 30)
> > +		return;
> > +
> > +	ret =3D intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> > +	if (!ret)
> > +		return;
> > +
> > +	for (i =3D 0; i < 3; i++) {
> > +		drm_dbg_kms(display->drm, "Retry FEC enabling\n");
> > +
> > +		intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > +			     DP_TP_CTL_FEC_ENABLE, 0);
> > +
> > +		ret =3D intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
> > +		if (ret)
> > +			continue;
> > +
> > +		intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > +			     0, DP_TP_CTL_FEC_ENABLE);
> > +
> > +		ret =3D intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> > +		if (!ret)
> > +			return;
> > +	}
> > +
> > +	drm_err(display->drm, "Failed to enable FEC after retries\n");
> >  }
> >
> >  static void intel_ddi_disable_fec(struct intel_encoder *encoder, diff
> > --git a/drivers/gpu/drm/i915/display/intel_ddi.h
> > b/drivers/gpu/drm/i915/display/intel_ddi.h
> > index 6d85422bdefe..640851d46b1b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > @@ -63,9 +63,9 @@ void intel_ddi_disable_transcoder_func(const struct
> > intel_crtc_state *crtc_state  void intel_ddi_enable_transcoder_clock(st=
ruct
> intel_encoder *encoder,
> >  				       const struct intel_crtc_state *crtc_state);
> void
> > intel_ddi_disable_transcoder_clock(const  struct intel_crtc_state
> > *crtc_state); -void intel_ddi_wait_for_fec_status(struct intel_encoder
> *encoder,
> > -				   const struct intel_crtc_state *crtc_state,
> > -				   bool enabled);
> > +int intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> > +				  const struct intel_crtc_state *crtc_state,
> > +				  bool enabled);
> >  void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
> >  			  const struct drm_connector_state *conn_state);
> bool
> > intel_ddi_connector_get_hw_state(struct intel_connector
> > *intel_connector);
>=20
> --
> Jani Nikula, Intel
