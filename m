Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8813A33AFC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 10:20:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FE1610EA43;
	Thu, 13 Feb 2025 09:20:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LQoxKrx2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A89010EA43;
 Thu, 13 Feb 2025 09:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739438411; x=1770974411;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MSqsWLZ+eJApiaaLsMkVkULdPQZ2rTmrzyUf3v5rFBg=;
 b=LQoxKrx2mw22I25fZznEJsAzpG0e0/+J6TgU5dsobuHs6OJ6yAM4wnNR
 zDgf/jQmHgl3tAQtrcmR3JvBxuWRG9zaDYu20L4p4JgRAhAHZFVYi83eI
 EvaDLGCJ4KB10DYQStKDv/WET1+DcFSSqQlT+Ty7uY8b6bH1Nl7sg6Qk0
 WdtHoPMpdqimP1rbNNTnxcznRIzD9bxuocyqexx6eAerdXHSFae+t7Rcy
 pQeH0TIY9+5IxVF2JPJYz5hmqPkfmY/Z5Ln5PgnrvqdFb4Btcr4cj5PSI
 5PGMMSX6ZypLfYWGxktjkfKsvZWS1obNkeIkd3d5nl3SEs/lWC3zouul5 w==;
X-CSE-ConnectionGUID: 7GWivcQQR/mDObhz/cy0Sg==
X-CSE-MsgGUID: zWTi0jgWTLi1d7G1lxh6TQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="57533031"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57533031"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 01:20:10 -0800
X-CSE-ConnectionGUID: K0Z7p3YbQRSIB1IaV3k0fA==
X-CSE-MsgGUID: ce5R7WpqTSKepETvZNmRfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113073606"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 01:20:09 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 01:20:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 01:20:09 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 01:20:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Oy5sZqyMlsA7W9d3mTujj1KU0IG5TuAnvtYt/Cza4jHuDN8D4XVmQm3sRt1ebvzfGGvzzdK5R7776sbXnkWOaI22+lj3oERcfsgh1lyvb8zxfRPVlqnFSD9HbveGpySN3E+6ojHUQyLn9N1YcRwbpQOYfRuOzzuNefowI4jzXoUWhdTzGVJn7rXbk50HMnVt4r6mC6E+dK2+qCSi6BJzzpi2Kf+sjXcUcEQDIjiMYZou5cpRrYWbvUNAaH544W0ASf4aYFxnZM1hMvrkcYGoOfHCh0ylyB/G0OSXJFume3/fnbzUTjCn/CCBrIDf0/G3efwDOPSfsGj3vyFKLIFi4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVXRrHAL6O/9Wo+jrcOdaaYHyjwy1M1izW0uq9YggG4=;
 b=vYGB4NSPDxM/Y+5qH+wwfbEp8wUX+XCpCMynBi3/p3Mw5zq752tIOkxrWfUVKX2EXAi+TW6qdneMgPsSA8DlNK9ZE562k73snEBWbPXOvFC5/pWoYlz2urvMTY3pMLUpMCDcuFAMZgWcJtbiyWWc+pWSWkgP7Ic/XBSNl59mHJGnl4YMAMY58bwS1nb/qZfodVjr+Lpc511M1z1S7qAn3tis7T9UkpzXvhBuJ9Vr7TDZHauVPrYT6fPdV8GqW37ooOYUpTZ5GcpnUUQbNCMdUPoKlyU0iFxA+upJ7GnK1sZ+o0ROy4lhFnqaKoGpzvVK1YtIG/mkY0pul0Va9ivqow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW3PR11MB4601.namprd11.prod.outlook.com (2603:10b6:303:59::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Thu, 13 Feb
 2025 09:19:55 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 09:19:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 01/14] drm/i915/dp: convert g4x_dp.[ch] to struct intel
 display
Thread-Topic: [PATCH 01/14] drm/i915/dp: convert g4x_dp.[ch] to struct intel
 display
Thread-Index: AQHbfWxtie8ioUH1E0CawdY6cwuuF7NE7K3QgAAHjoCAAAF3UA==
Date: Thu, 13 Feb 2025 09:19:55 +0000
Message-ID: <SN7PR11MB6750CE4062E9DBFDCF0D0EFFE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
 <89ce4f7e6aa31f3db6316537f54c5bc7df852322.1739378095.git.jani.nikula@intel.com>
 <SN7PR11MB6750A68DB16BDBA1B78D44BFE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87v7texl54.fsf@intel.com>
In-Reply-To: <87v7texl54.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW3PR11MB4601:EE_
x-ms-office365-filtering-correlation-id: e0b1feaf-cd6c-44f4-c3ac-08dd4c0f948c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ktHD1HGCqj+6DXt0ymYVkxKUs5gqbg+pLGpJJDt9H4n8YI/7Bt5avVKbHytq?=
 =?us-ascii?Q?G8vlFnNJZPxxuimR0XA9krIe78JTey68rqfq+sP0f3Xxn7kVeRUu8ORXVe8T?=
 =?us-ascii?Q?09woY8/1gGANBmhI1TeuycN19pGeYF/jFGenpP80sGZ0GwK8zPrR0OKHIxDu?=
 =?us-ascii?Q?y5VhM6NheLN3PQXcMCjzvNLVl3yiSwiULj7If1TSmnPeuUJbS/e7NMoXYUd5?=
 =?us-ascii?Q?HqINH2eEdz9AMPrHbd81aHN2ZibSF+8HJkSNrtzs71AW4rFqo53FGxvsZQMH?=
 =?us-ascii?Q?wf/cDYxjW56j5fq1sPmcoERVId0AufoVhN+VNTrzEoxzN+q0ONCoAV/r9EX6?=
 =?us-ascii?Q?57QFBT6aNLcT6d7iXF00eJiEgiq3zXb/FAsg6pqwlD2efh3havgl8DHBhEHH?=
 =?us-ascii?Q?A2raCGGbkJMDsbiCCsJ33Y1kuqNZzX4d/ukOUmfpTe+7CaZ+X2X78GX4wVVB?=
 =?us-ascii?Q?EiaDYtwnPc4J8tZgLF+16osS5UUzwfxOD6VgDRc/2oejD/+ENPs8D/g1P63O?=
 =?us-ascii?Q?eT+NLVPcXIetv8PzWboP80Hj+FSrsoNFFAQZ03rrW5IjGjy4PzVYf6esw7tR?=
 =?us-ascii?Q?Wdm7n5MMTmruoZkNG60iz3nWKvkvLK7ANrCzre51pOrPmW5fKSgBJ6T1Jmv9?=
 =?us-ascii?Q?Y9HiOtkXqU1CKOfd64B0Lquk5nbHxLL2ynL/4sA4UQCxTkhNTQHyYTedjx/F?=
 =?us-ascii?Q?iSPfAyxdAFULAmsSxETj9DTcxlY8Nif5AuStPWgcBbmQskexs0glTT26Glme?=
 =?us-ascii?Q?BHXYV+NSiJILlI1raJ430HYcXKIxbUZrN2QDXqq0bDvbaNS5DEdXaXgBiy9a?=
 =?us-ascii?Q?R+2Bb+E8swC+BZiH2SvD60N6gaNmUJvUmg+Fb5ab0pIaOVECnTVSjOsJTqrs?=
 =?us-ascii?Q?QYaIWlH7ahuWhHM+DCd3IScI6ISL3EFPCCl7pRIrd0CYX7cR17Rmf8es3D+p?=
 =?us-ascii?Q?8w9lSokRToi5k2itfTKig01IHg06/RZP8Vd0GRssDZMsAkHyDs8Q4VBa6hL/?=
 =?us-ascii?Q?KC14mm/9HlODgFqR6ib9aIMk2WzdRD0MioWOUslD9wNMYC4wDYotujm/wOxM?=
 =?us-ascii?Q?5RKI3zduVs236BxSGaYYXxrl3Pd6u7yXzama1u0hF40N1glVK7tnqJQ/DwZY?=
 =?us-ascii?Q?skZTLrbl7z5zMaIbl0fqJ3uBPy9SbYLmj83ST97L7DXbLSywkhXQxr+hCWj/?=
 =?us-ascii?Q?hWkN0pN2SflID8ZNU9ydoEHJhz34am9WhV7YnAQyjaIDM+LNdO7/PLx6M/X2?=
 =?us-ascii?Q?laZM4OERTsixK82Dv/I3DySO/nI1TuIZsjhP0t3Q1k0Y+DO/vu6CBgaydVuH?=
 =?us-ascii?Q?0N6uQGpq17a+IS5b6x4sEImWElN1X1YVDSJCLT2QhoCYSXn28nNwQZ5Cr5BC?=
 =?us-ascii?Q?g4hg0shJmjmXDhwWKzrZW0eevZhzeexo2MGObT3KYogGO2YuYu+ohIvsHVor?=
 =?us-ascii?Q?ZvfaPmumsn98HppL8kcxFpWYxGDltrfT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W7ScKllnT9hWc8JKBVfwkkIjLu5stI06V2FkVtidXXdn8cAAxvYujiawAudR?=
 =?us-ascii?Q?51FxPZ1b6XJQR5Z2xgL9OuxRqPWzOloso6E4zuVD8SUBGNYpvWyIGyzn9OCB?=
 =?us-ascii?Q?qGOu2DQR/IU45H6o8R5abf/8bugPsgl3FCHFh5CczYaxGk/9Vab50B+mikFu?=
 =?us-ascii?Q?fFJebkQnjCceRJYiqsxN7nyH/NO7KhhplplWaTOyNhQhwLfIWeyVmqRaPFmF?=
 =?us-ascii?Q?W1lMlh9mrmoKyTSohJozxl7SVhK4vwAZmaMeWLFrLFM9r7Yc/YaOJaS6d3Er?=
 =?us-ascii?Q?oWrvVNSy9U5vQYV1GDpDoG6elkDXABd+Ug2cocCUskE4304iJqGV31CawEgh?=
 =?us-ascii?Q?upVrLVHVS6cKzfcrZLwAw7ODnoRfZ5fvjh/V2LZnzs/CY/DlxZYLnm6sa1Jx?=
 =?us-ascii?Q?KYESmfiWgOgyfJgYBeZ3aoA9UFLbiQV6KqwbPpB6xJ08qFVaEPFJgkcQwUvi?=
 =?us-ascii?Q?ZFmIPxibPMRXOTTBlx6ocr2iR7tIMRxbqwjzWVY1UkAYN56T5yZ7dxKGIeZ4?=
 =?us-ascii?Q?UkGGysv6VpahXYQGWodb9l05A4WkKfedGuy3l9GI1JZTsLEXbO8U/p/bJqkR?=
 =?us-ascii?Q?2lzlo4Z5JJd3OhQ+iXzGmKYi+qjO43K/TEfmKYzT/gAjKkVj724zUlfaqiL1?=
 =?us-ascii?Q?MDN5YG7A++Z1YLf1pg1SmJD3akEeij9W5pFUpDgr+PABgviDk84Lb6W69tfd?=
 =?us-ascii?Q?sn53tp0VCVzfv19T+P490IUMBhUINRyJphi33E57LFcmb5yvqQixO4/EddZS?=
 =?us-ascii?Q?1CT+j0OCj3XKuEDQOuStPE8HmreLQdoHXPLeZN0p/ZphIK4J0pwYul5tbsTw?=
 =?us-ascii?Q?O1HokL3Ou9ytmlOluCBfm9io2wDqnN/1C/jyAZwFbZ6MglzNZNBo7Lgi89jQ?=
 =?us-ascii?Q?JaPFXtF4Sj0ySOd4YMZE4y2sD6nW9UyxKf35rAQnkHKI12dZiqtjEXBMC2Bo?=
 =?us-ascii?Q?jgb1CCtySKRki3G7nZLBmcixuTPhYq03jiY+RLW2C/Y23nbr30tkqEwWDa4D?=
 =?us-ascii?Q?uN4ZylCwXtDWnGdo9Y0i/7dpI+DftPhjVTNxUR/IOzgXjlzLfYDsMcsHl+Oa?=
 =?us-ascii?Q?aIdq0JrcSChMJ+rHYjUQ4IovyyQck43p9VosfY3zovb2JH3GhoLpSUdpG7Zz?=
 =?us-ascii?Q?SZxxEX7NtGjM2Ah/DPlFfuSw6w+9BGsENpjtDWz7F+P2G+vGrsCMOODXP4bq?=
 =?us-ascii?Q?5tOSurLNH1Foq3g4J23r90eQQKIJcnU8EuuESzyWGOGma8LC7T+6zTvxUhtM?=
 =?us-ascii?Q?YbRl+li4oyylgdNsqoxN8s9zawU00FGkRk6B+yJTZeDOLNFN09gvQ28cfVv4?=
 =?us-ascii?Q?Ur+0PfF6mHpTR8y/u3+V96zW5FpOZqEpYK+f7ZDNoRDNzIQFNi/I8gX3sAb5?=
 =?us-ascii?Q?f8N27RfluhsN62gLKTiA7KVUWBDCJdIFEr+3hOWuKCuT9XX/gKC+iAPASWLj?=
 =?us-ascii?Q?8cHMkJDJHllTF43uTOvQO1X3Ra79zh65baQkvroSVkKKkgLkXonU80I/46xf?=
 =?us-ascii?Q?yglkqeuU5QPzDbEy02czByR+qS8yADlCiv4pIrGEJJCEDxPfi6urvcakEqAu?=
 =?us-ascii?Q?7sz0eT1O6mgnqD69p4tA4YlR/GhVLqRUW6y+mGo3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0b1feaf-cd6c-44f4-c3ac-08dd4c0f948c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 09:19:55.6557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mft8ThLAfqL7Y5AZfn4pg90JPwbBNj3GY0Whp+aLogUXkqOaqRk7kRZTwnciMWrCyNAmHNXuSglx1o+c10Ju6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4601
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, February 13, 2025 2:43 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org;
> intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH 01/14] drm/i915/dp: convert g4x_dp.[ch] to struct int=
el
> display
>=20
> On Thu, 13 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> Of Jani Nikula
> >> Sent: Wednesday, February 12, 2025 10:07 PM
> >> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>
> >> Subject: [PATCH 01/14] drm/i915/dp: convert g4x_dp.[ch] to struct
> >> intel display
> >>
> >> Going forward, struct intel_display is the main display device data po=
inter.
> >> Convert as much as possible of g4x_dp.[ch] to struct intel_display.
> >>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/g4x_dp.c         | 80 +++++++++---------=
-
> >>  drivers/gpu/drm/i915/display/g4x_dp.h         | 14 ++--
> >>  drivers/gpu/drm/i915/display/intel_display.c  | 20 ++---
> >> .../gpu/drm/i915/display/intel_pch_display.c  |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_pps.c      | 11 ++-
> >>  5 files changed, 61 insertions(+), 66 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> >> b/drivers/gpu/drm/i915/display/g4x_dp.c
> >> index d3b5ead188ba..cfc796607a78 100644
> >> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> >> @@ -51,28 +51,29 @@ static const struct dpll chv_dpll[] =3D {
> >>       { .dot =3D 270000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m1 =3D 2, .m=
2 =3D
> >> 0x6c00000 /*
> >> 27.0 */ },  };
> >>
> >> -const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
> >> +const struct dpll *vlv_get_dpll(struct intel_display *display)
> >>  {
> >> -     return IS_CHERRYVIEW(i915) ? &chv_dpll[0] : &vlv_dpll[0];
> >> +     return display->platform.cherryview ? &chv_dpll[0] :
> >> + &vlv_dpll[0];
> >>  }
> >>
> >>  static void g4x_dp_set_clock(struct intel_encoder *encoder,
> >>                            struct intel_crtc_state *pipe_config)  {
> >> +     struct intel_display *display =3D to_intel_display(encoder);
> >>       struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev)=
;
> >>       const struct dpll *divisor =3D NULL;
> >>       int i, count =3D 0;
> >>
> >> -     if (IS_G4X(dev_priv)) {
> >> +     if (display->platform.g4x) {
> >>               divisor =3D g4x_dpll;
> >>               count =3D ARRAY_SIZE(g4x_dpll);
> >>       } else if (HAS_PCH_SPLIT(dev_priv)) {
> >>               divisor =3D pch_dpll;
> >>               count =3D ARRAY_SIZE(pch_dpll);
> >> -     } else if (IS_CHERRYVIEW(dev_priv)) {
> >> +     } else if (display->platform.cherryview) {
> >>               divisor =3D chv_dpll;
> >>               count =3D ARRAY_SIZE(chv_dpll);
> >> -     } else if (IS_VALLEYVIEW(dev_priv)) {
> >> +     } else if (display->platform.valleyview) {
> >>               divisor =3D vlv_dpll;
> >>               count =3D ARRAY_SIZE(vlv_dpll);
> >>       }
> >> @@ -129,7 +130,7 @@ static void intel_dp_prepare(struct intel_encoder
> >> *encoder,
> >>
> >>       /* Split out the IBX/CPU vs CPT settings */
> >>
> >> -     if (IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A) {
> >> +     if (display->platform.ivybridge && port =3D=3D PORT_A) {
> >>               if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
> >>                       intel_dp->DP |=3D DP_SYNC_HS_HIGH;
> >>               if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC) @@
> >> -148,7 +149,7 @@ static void intel_dp_prepare(struct intel_encoder
> >> *encoder,
> >>                            pipe_config->enhanced_framing ?
> >>                            TRANS_DP_ENH_FRAMING : 0);
> >>       } else {
> >> -             if (IS_G4X(dev_priv) && pipe_config->limited_color_range=
)
> >> +             if (display->platform.g4x && pipe_config-
> >> >limited_color_range)
> >>                       intel_dp->DP |=3D DP_COLOR_RANGE_16_235;
> >>
> >>               if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC) @@
> >> -160,7 +161,7 @@ static void intel_dp_prepare(struct intel_encoder
> >> *encoder,
> >>               if (pipe_config->enhanced_framing)
> >>                       intel_dp->DP |=3D DP_ENHANCED_FRAMING;
> >>
> >> -             if (IS_CHERRYVIEW(dev_priv))
> >> +             if (display->platform.cherryview)
> >>                       intel_dp->DP |=3D DP_PIPE_SEL_CHV(crtc->pipe);
> >>               else
> >>                       intel_dp->DP |=3D DP_PIPE_SEL(crtc->pipe); @@
> >> -180,9
> >> +181,8 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool
> >> +state)
> >> }  #define assert_dp_port_disabled(d) assert_dp_port((d), false)
> >>
> >> -static void assert_edp_pll(struct drm_i915_private *dev_priv, bool
> >> state)
> >> +static void assert_edp_pll(struct intel_display *display, bool
> >> +state)
> >>  {
> >> -     struct intel_display *display =3D &dev_priv->display;
> >>       bool cur_state =3D intel_de_read(display, DP_A) & DP_PLL_ENABLE;
> >>
> >>       INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state, @@ -201,=
7
> >> +201,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
> >>
> >>       assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder=
);
> >>       assert_dp_port_disabled(intel_dp);
> >> -     assert_edp_pll_disabled(dev_priv);
> >> +     assert_edp_pll_disabled(display);
> >>
> >>       drm_dbg_kms(display->drm, "enabling eDP PLL for clock %d\n",
> >>                   pipe_config->port_clock); @@ -223,7 +223,7 @@
> >> static void ilk_edp_pll_on(struct intel_dp *intel_dp,
> >>        * 1. Wait for the start of vertical blank on the enabled pipe
> >> going to FDI
> >>        * 2. Program DP PLL enable
> >>        */
> >> -     if (IS_IRONLAKE(dev_priv))
> >> +     if (display->platform.ironlake)
> >>               intel_wait_for_vblank_if_active(display, !crtc->pipe);
> >>
> >>       intel_dp->DP |=3D DP_PLL_ENABLE;
> >> @@ -242,7 +242,7 @@ static void ilk_edp_pll_off(struct intel_dp
> >> *intel_dp,
> >>
> >>       assert_transcoder_disabled(dev_priv, old_crtc_state-
> >> >cpu_transcoder);
> >>       assert_dp_port_disabled(intel_dp);
> >> -     assert_edp_pll_enabled(dev_priv);
> >> +     assert_edp_pll_enabled(display);
> >>
> >>       drm_dbg_kms(display->drm, "disabling eDP PLL\n");
> >>
> >> @@ -253,10 +253,9 @@ static void ilk_edp_pll_off(struct intel_dp
> *intel_dp,
> >>       udelay(200);
> >>  }
> >>
> >> -static bool cpt_dp_port_selected(struct drm_i915_private *dev_priv,
> >> +static bool cpt_dp_port_selected(struct intel_display *display,
> >>                                enum port port, enum pipe *pipe)  {
> >> -     struct intel_display *display =3D &dev_priv->display;
> >>       enum pipe p;
> >>
> >>       for_each_pipe(display, p) {
> >> @@ -277,11 +276,11 @@ static bool cpt_dp_port_selected(struct
> >> drm_i915_private *dev_priv,
> >>       return false;
> >>  }
> >>
> >> -bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
> >> +bool g4x_dp_port_enabled(struct intel_display *display,
> >>                        i915_reg_t dp_reg, enum port port,
> >>                        enum pipe *pipe)  {
> >> -     struct intel_display *display =3D &dev_priv->display;
> >> +     struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> >>       bool ret;
> >>       u32 val;
> >>
> >> @@ -290,11 +289,11 @@ bool g4x_dp_port_enabled(struct
> >> drm_i915_private *dev_priv,
> >>       ret =3D val & DP_PORT_EN;
> >>
> >>       /* asserts want to know the pipe even if the port is disabled */
> >> -     if (IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A)
> >> +     if (display->platform.ivybridge && port =3D=3D PORT_A)
> >>               *pipe =3D (val & DP_PIPE_SEL_MASK_IVB) >>
> >> DP_PIPE_SEL_SHIFT_IVB;
> >>       else if (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A)
> >> -             ret &=3D cpt_dp_port_selected(dev_priv, port, pipe);
> >> -     else if (IS_CHERRYVIEW(dev_priv))
> >> +             ret &=3D cpt_dp_port_selected(display, port, pipe);
> >> +     else if (display->platform.cherryview)
> >>               *pipe =3D (val & DP_PIPE_SEL_MASK_CHV) >>
> >> DP_PIPE_SEL_SHIFT_CHV;
> >>       else
> >>               *pipe =3D (val & DP_PIPE_SEL_MASK) >> DP_PIPE_SEL_SHIFT;
> >> @@ -306,7 +305,6 @@ static bool intel_dp_get_hw_state(struct
> >> intel_encoder *encoder,
> >>                                 enum pipe *pipe)  {
> >>       struct intel_display *display =3D to_intel_display(encoder);
> >> -     struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev)=
;
> >>       struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> >>       intel_wakeref_t wakeref;
> >>       bool ret;
> >> @@ -316,7 +314,7 @@ static bool intel_dp_get_hw_state(struct
> >> intel_encoder *encoder,
> >>       if (!wakeref)
> >>               return false;
> >>
> >> -     ret =3D g4x_dp_port_enabled(dev_priv, intel_dp->output_reg,
> >> +     ret =3D g4x_dp_port_enabled(display, intel_dp->output_reg,
> >>                                 encoder->port, pipe);
> >>
> >>       intel_display_power_put(display, encoder->power_domain,
> >> wakeref); @@ -391,7 +389,7 @@ static void intel_dp_get_config(struct
> >> intel_encoder *encoder,
> >>
> >>       pipe_config->hw.adjusted_mode.flags |=3D flags;
> >>
> >> -     if (IS_G4X(dev_priv) && tmp & DP_COLOR_RANGE_16_235)
> >> +     if (display->platform.g4x && tmp & DP_COLOR_RANGE_16_235)
> >>               pipe_config->limited_color_range =3D true;
> >>
> >>       pipe_config->lane_count =3D
> >> @@ -433,7 +431,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
> >>
> >>       drm_dbg_kms(display->drm, "\n");
> >>
> >> -     if ((IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A) ||
> >> +     if ((display->platform.ivybridge && port =3D=3D PORT_A) ||
> >>           (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A)) {
> >>               intel_dp->DP &=3D ~DP_LINK_TRAIN_MASK_CPT;
> >>               intel_dp->DP |=3D DP_LINK_TRAIN_PAT_IDLE_CPT; @@ -479,7
> >> +477,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
> >>
> >>       msleep(intel_dp->pps.panel_power_down_delay);
> >>
> >> -     if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> >> +     if (display->platform.valleyview ||
> >> + display->platform.cherryview)
> >>               vlv_pps_port_disable(encoder, old_crtc_state);  }
> >>
> >> @@ -682,7 +680,6 @@ static void intel_enable_dp(struct
> >> intel_atomic_state *state,
> >>                           const struct drm_connector_state *conn_state=
)  {
> >>       struct intel_display *display =3D to_intel_display(state);
> >> -     struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev)=
;
> >>       struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> >>       u32 dp_reg =3D intel_de_read(display, intel_dp->output_reg);
> >>       intel_wakeref_t wakeref;
> >> @@ -691,7 +688,7 @@ static void intel_enable_dp(struct
> >> intel_atomic_state *state,
> >>               return;
> >>
> >>       with_intel_pps_lock(intel_dp, wakeref) {
> >> -             if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> >> +             if (display->platform.valleyview || display-
> >> >platform.cherryview)
> >>                       vlv_pps_port_enable_unlocked(encoder,
> >> pipe_config);
> >>
> >>               intel_dp_enable_port(intel_dp, pipe_config); @@ -701,10
> >> +698,10 @@ static void intel_enable_dp(struct intel_atomic_state
> >> +*state,
> >>               intel_pps_vdd_off_unlocked(intel_dp, true);
> >>       }
> >>
> >> -     if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> >> +     if (display->platform.valleyview ||
> >> + display->platform.cherryview) {
> >>               unsigned int lane_mask =3D 0x0;
> >>
> >> -             if (IS_CHERRYVIEW(dev_priv))
> >> +             if (display->platform.cherryview)
> >>                       lane_mask =3D
> >> intel_dp_unused_lane_mask(pipe_config->lane_count);
> >>
> >>               vlv_wait_port_ready(display, dp_to_dig_port(intel_dp),
> >> lane_mask); @@ -1264,7 +1261,6 @@ static void
> >> intel_dp_encoder_destroy(struct drm_encoder *encoder)  static void
> >> intel_dp_encoder_reset(struct drm_encoder *encoder)  {
> >>       struct intel_display *display =3D to_intel_display(encoder->dev)=
;
> >> -     struct drm_i915_private *dev_priv =3D to_i915(encoder->dev);
> >
> > I know this hasn't changed in this patch and is already there merged
> > in code but a good chance to Do to_intel_display(encoder) instead of
> > encoder->dev
>=20
> to_intel_display() intentionally doesn't handle drm_encoder, so can't.
>=20
> > Otherwise
> > LGTM,
> > Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Thanks, but I've just merged the series with Ville's Reviewed-by.

Ohkay didn't read this till I got to the 10th patch

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
> >
> >>       struct intel_dp *intel_dp =3D
> >> enc_to_intel_dp(to_intel_encoder(encoder));
> >>
> >>       intel_dp->DP =3D intel_de_read(display, intel_dp->output_reg); @=
@
> >> -
> >> 1272,7 +1268,7 @@ static void intel_dp_encoder_reset(struct
> >> drm_encoder
> >> *encoder)
> >>       intel_dp->reset_link_params =3D true;
> >>       intel_dp_invalidate_source_oui(intel_dp);
> >>
> >> -     if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> >> +     if (display->platform.valleyview ||
> >> + display->platform.cherryview)
> >>               vlv_pps_pipe_reset(intel_dp);
> >>
> >>       intel_pps_encoder_reset(intel_dp);
> >> @@ -1283,10 +1279,10 @@ static const struct drm_encoder_funcs
> >> intel_dp_enc_funcs =3D {
> >>       .destroy =3D intel_dp_encoder_destroy,  };
> >>
> >> -bool g4x_dp_init(struct drm_i915_private *dev_priv,
> >> +bool g4x_dp_init(struct intel_display *display,
> >>                i915_reg_t output_reg, enum port port)  {
> >> -     struct intel_display *display =3D &dev_priv->display;
> >> +     struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> >>       const struct intel_bios_encoder_data *devdata;
> >>       struct intel_digital_port *dig_port;
> >>       struct intel_encoder *intel_encoder; @@ -1337,14 +1333,14 @@
> >> bool g4x_dp_init(struct drm_i915_private *dev_priv,
> >>       intel_encoder->suspend =3D intel_dp_encoder_suspend;
> >>       intel_encoder->suspend_complete =3D g4x_dp_suspend_complete;
> >>       intel_encoder->shutdown =3D intel_dp_encoder_shutdown;
> >> -     if (IS_CHERRYVIEW(dev_priv)) {
> >> +     if (display->platform.cherryview) {
> >>               intel_encoder->pre_pll_enable =3D chv_dp_pre_pll_enable;
> >>               intel_encoder->pre_enable =3D chv_pre_enable_dp;
> >>               intel_encoder->enable =3D vlv_enable_dp;
> >>               intel_encoder->disable =3D vlv_disable_dp;
> >>               intel_encoder->post_disable =3D chv_post_disable_dp;
> >>               intel_encoder->post_pll_disable =3D chv_dp_post_pll_disa=
ble;
> >> -     } else if (IS_VALLEYVIEW(dev_priv)) {
> >> +     } else if (display->platform.valleyview) {
> >>               intel_encoder->pre_pll_enable =3D vlv_dp_pre_pll_enable;
> >>               intel_encoder->pre_enable =3D vlv_pre_enable_dp;
> >>               intel_encoder->enable =3D vlv_enable_dp; @@ -1359,24
> >> +1355,24 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
> >>       intel_encoder->audio_enable =3D g4x_dp_audio_enable;
> >>       intel_encoder->audio_disable =3D g4x_dp_audio_disable;
> >>
> >> -     if ((IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A) ||
> >> +     if ((display->platform.ivybridge && port =3D=3D PORT_A) ||
> >>           (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A))
> >>               dig_port->dp.set_link_train =3D cpt_set_link_train;
> >>       else
> >>               dig_port->dp.set_link_train =3D g4x_set_link_train;
> >>
> >> -     if (IS_CHERRYVIEW(dev_priv))
> >> +     if (display->platform.cherryview)
> >>               intel_encoder->set_signal_levels =3D chv_set_signal_leve=
ls;
> >> -     else if (IS_VALLEYVIEW(dev_priv))
> >> +     else if (display->platform.valleyview)
> >>               intel_encoder->set_signal_levels =3D vlv_set_signal_leve=
ls;
> >> -     else if (IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A)
> >> +     else if (display->platform.ivybridge && port =3D=3D PORT_A)
> >>               intel_encoder->set_signal_levels =3D
> >> ivb_cpu_edp_set_signal_levels;
> >> -     else if (IS_SANDYBRIDGE(dev_priv) && port =3D=3D PORT_A)
> >> +     else if (display->platform.sandybridge && port =3D=3D PORT_A)
> >>               intel_encoder->set_signal_levels =3D
> >> snb_cpu_edp_set_signal_levels;
> >>       else
> >>               intel_encoder->set_signal_levels =3D
> >> g4x_set_signal_levels;
> >>
> >> -     if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
> >> +     if (display->platform.valleyview ||
> >> + display->platform.cherryview ||
> >>           (HAS_PCH_SPLIT(dev_priv) && port !=3D PORT_A)) {
> >>               dig_port->dp.preemph_max =3D intel_dp_preemph_max_3;
> >>               dig_port->dp.voltage_max =3D intel_dp_voltage_max_3; @@ =
-
> >> 1390,7 +1386,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
> >>
> >>       intel_encoder->type =3D INTEL_OUTPUT_DP;
> >>       intel_encoder->power_domain =3D
> >> intel_display_power_ddi_lanes_domain(display, port);
> >> -     if (IS_CHERRYVIEW(dev_priv)) {
> >> +     if (display->platform.cherryview) {
> >>               if (port =3D=3D PORT_D)
> >>                       intel_encoder->pipe_mask =3D BIT(PIPE_C);
> >>               else
> >> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.h
> >> b/drivers/gpu/drm/i915/display/g4x_dp.h
> >> index 839a251dc069..0b28951b8365 100644
> >> --- a/drivers/gpu/drm/i915/display/g4x_dp.h
> >> +++ b/drivers/gpu/drm/i915/display/g4x_dp.h
> >> @@ -12,30 +12,30 @@
> >>
> >>  enum pipe;
> >>  enum port;
> >> -struct drm_i915_private;
> >>  struct intel_crtc_state;
> >> +struct intel_display;
> >>  struct intel_dp;
> >>  struct intel_encoder;
> >>
> >>  #ifdef I915
> >> -const struct dpll *vlv_get_dpll(struct drm_i915_private *i915);
> >> -bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
> >> +const struct dpll *vlv_get_dpll(struct intel_display *display); bool
> >> +g4x_dp_port_enabled(struct intel_display *display,
> >>                        i915_reg_t dp_reg, enum port port,
> >>                        enum pipe *pipe); -bool g4x_dp_init(struct
> >> drm_i915_private *dev_priv,
> >> +bool g4x_dp_init(struct intel_display *display,
> >>                i915_reg_t output_reg, enum port port);  #else -static
> >> inline const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
> >> +static inline const struct dpll *vlv_get_dpll(struct intel_display
> >> +*display)
> >>  {
> >>       return NULL;
> >>  }
> >> -static inline bool g4x_dp_port_enabled(struct drm_i915_private
> >> *dev_priv,
> >> +static inline bool g4x_dp_port_enabled(struct intel_display
> >> +*display,
> >>                                      i915_reg_t dp_reg, int port,
> >>                                      enum pipe *pipe)  {
> >>       return false;
> >>  }
> >> -static inline bool g4x_dp_init(struct drm_i915_private *dev_priv,
> >> +static inline bool g4x_dp_init(struct intel_display *display,
> >>                              i915_reg_t output_reg, int port)  {
> >>       return false;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> >> b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 6c1e7441313e..e5ceedf56335 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -8229,7 +8229,7 @@ void intel_setup_outputs(struct
> >> drm_i915_private
> >> *dev_priv)
> >>               dpd_is_edp =3D intel_dp_is_port_edp(display, PORT_D);
> >>
> >>               if (ilk_has_edp_a(dev_priv))
> >> -                     g4x_dp_init(dev_priv, DP_A, PORT_A);
> >> +                     g4x_dp_init(display, DP_A, PORT_A);
> >>
> >>               if (intel_de_read(dev_priv, PCH_HDMIB) & SDVO_DETECTED)
> >> {
> >>                       /* PCH SDVOB multiplex with HDMIB */ @@ -8237,7
> >> +8237,7 @@ void intel_setup_outputs(struct drm_i915_private
> >> +*dev_priv)
> >>                       if (!found)
> >>                               g4x_hdmi_init(dev_priv, PCH_HDMIB,
> >> PORT_B);
> >>                       if (!found && (intel_de_read(dev_priv,
> >> PCH_DP_B) &
> >> DP_DETECTED))
> >> -                             g4x_dp_init(dev_priv, PCH_DP_B, PORT_B);
> >> +                             g4x_dp_init(display, PCH_DP_B, PORT_B);
> >>               }
> >>
> >>               if (intel_de_read(dev_priv, PCH_HDMIC) & SDVO_DETECTED)
> >> @@ -8247,10 +8247,10 @@ void intel_setup_outputs(struct
> >> drm_i915_private *dev_priv)
> >>                       g4x_hdmi_init(dev_priv, PCH_HDMID, PORT_D);
> >>
> >>               if (intel_de_read(dev_priv, PCH_DP_C) & DP_DETECTED)
> >> -                     g4x_dp_init(dev_priv, PCH_DP_C, PORT_C);
> >> +                     g4x_dp_init(display, PCH_DP_C, PORT_C);
> >>
> >>               if (intel_de_read(dev_priv, PCH_DP_D) & DP_DETECTED)
> >> -                     g4x_dp_init(dev_priv, PCH_DP_D, PORT_D);
> >> +                     g4x_dp_init(display, PCH_DP_D, PORT_D);
> >>       } else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> >>               bool has_edp, has_port;
> >>
> >> @@ -8275,14 +8275,14 @@ void intel_setup_outputs(struct
> >> drm_i915_private *dev_priv)
> >>               has_edp =3D intel_dp_is_port_edp(display, PORT_B);
> >>               has_port =3D intel_bios_is_port_present(display, PORT_B)=
;
> >>               if (intel_de_read(dev_priv, VLV_DP_B) & DP_DETECTED ||
> >> has_port)
> >> -                     has_edp &=3D g4x_dp_init(dev_priv, VLV_DP_B,
> >> PORT_B);
> >> +                     has_edp &=3D g4x_dp_init(display, VLV_DP_B,
> >> PORT_B);
> >>               if ((intel_de_read(dev_priv, VLV_HDMIB) & SDVO_DETECTED
> >> || has_port) && !has_edp)
> >>                       g4x_hdmi_init(dev_priv, VLV_HDMIB, PORT_B);
> >>
> >>               has_edp =3D intel_dp_is_port_edp(display, PORT_C);
> >>               has_port =3D intel_bios_is_port_present(display, PORT_C)=
;
> >>               if (intel_de_read(dev_priv, VLV_DP_C) & DP_DETECTED ||
> >> has_port)
> >> -                     has_edp &=3D g4x_dp_init(dev_priv, VLV_DP_C,
> >> PORT_C);
> >> +                     has_edp &=3D g4x_dp_init(display, VLV_DP_C,
> >> PORT_C);
> >>               if ((intel_de_read(dev_priv, VLV_HDMIC) & SDVO_DETECTED
> >> || has_port) && !has_edp)
> >>                       g4x_hdmi_init(dev_priv, VLV_HDMIC, PORT_C);
> >>
> >> @@ -8293,7 +8293,7 @@ void intel_setup_outputs(struct
> >> drm_i915_private
> >> *dev_priv)
> >>                        */
> >>                       has_port =3D intel_bios_is_port_present(display,
> >> PORT_D);
> >>                       if (intel_de_read(dev_priv, CHV_DP_D) &
> >> DP_DETECTED || has_port)
> >> -                             g4x_dp_init(dev_priv, CHV_DP_D, PORT_D);
> >> +                             g4x_dp_init(display, CHV_DP_D, PORT_D);
> >>                       if (intel_de_read(dev_priv, CHV_HDMID) &
> >> SDVO_DETECTED || has_port)
> >>                               g4x_hdmi_init(dev_priv, CHV_HDMID,
> >> PORT_D);
> >>               }
> >> @@ -8320,7 +8320,7 @@ void intel_setup_outputs(struct
> >> drm_i915_private
> >> *dev_priv)
> >>                       }
> >>
> >>                       if (!found && IS_G4X(dev_priv))
> >> -                             g4x_dp_init(dev_priv, DP_B, PORT_B);
> >> +                             g4x_dp_init(display, DP_B, PORT_B);
> >>               }
> >>
> >>               /* Before G4X SDVOC doesn't have its own detect
> >> register */ @@ -8338,11 +8338,11 @@ void intel_setup_outputs(struct
> >> drm_i915_private *dev_priv)
> >>                               g4x_hdmi_init(dev_priv, GEN4_HDMIC,
> >> PORT_C);
> >>                       }
> >>                       if (IS_G4X(dev_priv))
> >> -                             g4x_dp_init(dev_priv, DP_C, PORT_C);
> >> +                             g4x_dp_init(display, DP_C, PORT_C);
> >>               }
> >>
> >>               if (IS_G4X(dev_priv) && (intel_de_read(dev_priv, DP_D)
> >> &
> >> DP_DETECTED))
> >> -                     g4x_dp_init(dev_priv, DP_D, PORT_D);
> >> +                     g4x_dp_init(display, DP_D, PORT_D);
> >>
> >>               if (SUPPORTS_TV(dev_priv))
> >>                       intel_tv_init(display); diff --git
> >> a/drivers/gpu/drm/i915/display/intel_pch_display.c
> >> b/drivers/gpu/drm/i915/display/intel_pch_display.c
> >> index 75ff5592312f..98a6b57ac956 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> >> @@ -45,7 +45,7 @@ static void assert_pch_dp_disabled(struct
> >> drm_i915_private *dev_priv,
> >>       enum pipe port_pipe;
> >>       bool state;
> >>
> >> -     state =3D g4x_dp_port_enabled(dev_priv, dp_reg, port, &port_pipe=
);
> >> +     state =3D g4x_dp_port_enabled(display, dp_reg, port, &port_pipe)=
;
> >>
> >>       INTEL_DISPLAY_STATE_WARN(display, state && port_pipe =3D=3D pipe=
,
> >>                                "PCH DP %c enabled on transcoder %c,
> >> should be disabled\n", diff --git
> >> a/drivers/gpu/drm/i915/display/intel_pps.c
> >> b/drivers/gpu/drm/i915/display/intel_pps.c
> >> index ef6effaf82e0..617ce4993172 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> >> @@ -134,7 +134,7 @@ vlv_power_sequencer_kick(struct intel_dp
> *intel_dp)
> >>               release_cl_override =3D display->platform.cherryview &&
> >>                       !chv_phy_powergate_ch(display, phy, ch, true);
> >>
> >> -             if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(dev_pr=
iv))) {
> >> +             if (vlv_force_pll_on(dev_priv, pipe,
> >> + vlv_get_dpll(display))) {
> >>                       drm_err(display->drm,
> >>                               "Failed to force on PLL for pipe %c!\n",
> >>                               pipe_name(pipe)); @@ -1225,11 +1225,10
> >> @@ static void vlv_steal_power_sequencer(struct intel_display
> >> *display,  static enum pipe vlv_active_pipe(struct intel_dp
> >> *intel_dp)  {
> >>       struct intel_display *display =3D to_intel_display(intel_dp);
> >> -     struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> >>       struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->bas=
e;
> >>       enum pipe pipe;
> >>
> >> -     if (g4x_dp_port_enabled(dev_priv, intel_dp->output_reg,
> >> +     if (g4x_dp_port_enabled(display, intel_dp->output_reg,
> >>                               encoder->port, &pipe))
> >>               return pipe;
> >>
> >> @@ -1859,13 +1858,13 @@ void assert_pps_unlocked(struct intel_display
> >> *display, enum pipe pipe)
> >>                       intel_lvds_port_enabled(dev_priv, PCH_LVDS,
> >> &panel_pipe);
> >>                       break;
> >>               case PANEL_PORT_SELECT_DPA:
> >> -                     g4x_dp_port_enabled(dev_priv, DP_A, PORT_A,
> >> &panel_pipe);
> >> +                     g4x_dp_port_enabled(display, DP_A, PORT_A,
> >> &panel_pipe);
> >>                       break;
> >>               case PANEL_PORT_SELECT_DPC:
> >> -                     g4x_dp_port_enabled(dev_priv, PCH_DP_C, PORT_C,
> >> &panel_pipe);
> >> +                     g4x_dp_port_enabled(display, PCH_DP_C, PORT_C,
> >> &panel_pipe);
> >>                       break;
> >>               case PANEL_PORT_SELECT_DPD:
> >> -                     g4x_dp_port_enabled(dev_priv, PCH_DP_D, PORT_D,
> >> &panel_pipe);
> >> +                     g4x_dp_port_enabled(display, PCH_DP_D, PORT_D,
> >> &panel_pipe);
> >>                       break;
> >>               default:
> >>                       MISSING_CASE(port_sel);
> >> --
> >> 2.39.5
> >
>=20
> --
> Jani Nikula, Intel
