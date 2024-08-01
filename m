Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28063944534
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 09:13:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C32FD10E8A1;
	Thu,  1 Aug 2024 07:13:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jzXOeei1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE5A10E8A4
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2024 07:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722496414; x=1754032414;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+uoXQQYH9U5QCK1g44LePnawYdVUhDuPKmGJyBoyyyM=;
 b=jzXOeei1rbPVNwjLtk+s3y78UhjCCJvmCg6Fo9BzfQQ6VzuQfDuV4STy
 flYOlySx1+E01SYjzSRKNvG+KMOtLBbufzv4Hh5QTiTdIoQp6Ok5vqZcv
 +H+MELb3vPVD00cZtWvnjxi91Rz6jHgMccQ9JfJGoYj0a4MOYinaOcPLJ
 LBt5YzxKEgNTlWtLIlkBT9az1ewQgu2pJZLvSZw9vxNCVkTQum3LhUY4R
 xb5CjbOt71eq8tvDohXJ1sSqSh4uSbXGnKVOhxft9vJV9iN2C2HIISPI/
 1rR3wnVzGgnLPUZfynjj3Gu1Rn9ATVd12sr5ghWEeZMJrvtHM8mhFk+uZ A==;
X-CSE-ConnectionGUID: ck7BzWT4TlmSDrKKVp+cCg==
X-CSE-MsgGUID: qX8D/GnzS/yCo7rCAum18w==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="24193154"
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="24193154"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 00:13:32 -0700
X-CSE-ConnectionGUID: kkbS/vgpR0m9JKH8Ph9hKg==
X-CSE-MsgGUID: YuYYOeYdSie6XxHHPdu5NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="78241021"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 00:13:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 00:13:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 00:13:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 00:13:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m0k0hh2IYlqTWyc4QlgFHW7SZ0iB4pLCE3/KZSUisLdEwLJaxLzSPf4sxwSQd3GSB9JLH+nsijSusMl8HGYbiHQw8ZJ/mISNs5o3FC/8l3acVyKK/AUOcDemiL5MDMLYj5468dvFASfYA7c0BM/6qgFHd/hFqJdVRhWkgriKY+K0cUv0Kkv+ZxSzEhTjRILSr4UtDZufEhCg0/EakHnbDbGHFMEXGkh9EzYE3Sp3ZrwdHuQjK01ajU4MaaDQZNAUFev0smcFIUn7L2Ftwvzekq7Pv4q0kkDEwJny1XTZY9sbJUSv7RYyQELUcTyukYjPOPjDoYXKV9T+43SbhHEDhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=diXpTgZ0A4AuqV2lxsz1ylWAY5g6XGqGqn8GLoR7kpM=;
 b=h7KHEcVxHehLdCao5hh22vztCkwxZ2vYXHeruWvm5YETkzj7+wOVTYT4FSAB0qQsKAMddEo4bNFrnORyJ3AvP6AyLpyL3RmqFUwAnRdOlAJef5pgqRTeMcVy8cO7tO4RA+WE/wdG3c8hs2qItmgKIS0hBZdZgmyqaLpO5+Zl+ZS1Z/8EEcV+dPbUU2tIn672Kv6slWnB81iovFV+UujpmfPbdpGfIwhiDYnQ5KAFPFIi4iUqiANuBmGKf64oJqPwc8g5jf+TZ+GnmwLxF0uKVp9QIy5JD+hQv/ZyXp2AZ+Z3aBwP74Zh2jeGXyOvWLPu8ubqtuEH6c0UDtYsoiBmMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by MW3PR11MB4537.namprd11.prod.outlook.com (2603:10b6:303:5d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 07:13:26 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Thu, 1 Aug 2024
 07:13:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 12/12] drm/i915/intel_dp: Add support for forcing
 ultrajoiner
Thread-Topic: [PATCH 12/12] drm/i915/intel_dp: Add support for forcing
 ultrajoiner
Thread-Index: AQHa2Or6aqwc9W/2XUaZas3fGWCwHrISEqGw
Date: Thu, 1 Aug 2024 07:13:26 +0000
Message-ID: <MW4PR11MB676138AA7B1BC401D4B1908BE3B22@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-13-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-13-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|MW3PR11MB4537:EE_
x-ms-office365-filtering-correlation-id: 4d77d36d-aecd-484b-2eca-08dcb1f9701d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?V3cXJcEZfWF1i/laavyyi3HnVAc4Y7VLFSoYH6dBmUpfrIsmI4Gfs4Qb5Rb9?=
 =?us-ascii?Q?hEbarGsoe8oK83JOip7HGtQDHu+aB0AlIF89rASAiHvsOweX1td3sZpWDaNz?=
 =?us-ascii?Q?zmMUTfH4tTUvtkB2pfR2rbQNlKsbFtRqQybRnQp5CUvm/QMffpMAjKNy8cIT?=
 =?us-ascii?Q?RXhOCJi6sqlpg40IHQyycGmt4rhwyN+nt6bBta/D5W5+aR/8UMJ6/uw4qafG?=
 =?us-ascii?Q?OmyKXaJ3vnqKUkL7T/P6I6HvxqOwGf8CzH3pCfiD/To5RvgKjT5/aHxvMil+?=
 =?us-ascii?Q?aHSemtlHdTBliA27VLcNMDsDWumSp/kTu6/jst9Z3/FpI7CVEvzLivotVIHv?=
 =?us-ascii?Q?eZ66zlyE1oAdxyP0cFMAj/HR3oCsafpJnLEmJMuXIX4NDK5TvtYN2Sv3v84a?=
 =?us-ascii?Q?eEiKy8N2ygAof/MRbExNwzmfNqO280aAB2Vs/FvvEHzsvAYYl2V1ngF2/SMY?=
 =?us-ascii?Q?h6cxUnoRs+i4tjDg91c7VzCipZT5bmo0idlDz/m+bdyl7wyq2U5OVU32rrBM?=
 =?us-ascii?Q?lC7JfjwjeWZ2IBThFYuD8TiTErZ037cDwDomFZ2jvXzkXMBhs+YnhMa5mZUc?=
 =?us-ascii?Q?txyyE/o/tNyvPUZvo3RjkTWJo3+Rtvqms5XfaH1MSwP6xLexYUJ0Cv15FPAI?=
 =?us-ascii?Q?nKzmrXM8i8B6U1o5N/uq7SBWVAn0At4BLl21yagkSdTinfbuipiSaPIwuAvO?=
 =?us-ascii?Q?U80m8lSBOg0JoG+L6DyJcGLk07wifuf7Oe9sDN2Jzyoqvf489iQCTHYgR+94?=
 =?us-ascii?Q?FoVO0Zsk8ElIbkOw6zw8vnK7QG9JTiT8wU8NLpM510Ji+TLWwHxWuW9pbEkV?=
 =?us-ascii?Q?PJttvb4civaDzvAbpG/lhXXmyAGIi/T/62IAQdhsUZWUGZddQdBLdkDg4G4w?=
 =?us-ascii?Q?8HzGIpyTBFwrh2iDncu62er0HmFGSAjSXu80BYxemtXrK5tw4BtprNA3rRNy?=
 =?us-ascii?Q?kStXAtQKnioTgUHp52FJg4y1YeiC1IYj85i4LcIPvTM9F8myqe6mMxLNCcIQ?=
 =?us-ascii?Q?AGaSRLLz1oPFIWCxExKvwJlwdDpvT7J9C6UMVurpZl9wWHpV8VtIaJZAjhjD?=
 =?us-ascii?Q?ZshB43eFr7MvPugwR7tTSTwtZNZFSy5s+a0R3H7IWAe5HPhuSkLezmAnGMEA?=
 =?us-ascii?Q?b9+sWe+wkcq4SMk3z0DkslTz66TA9zUxv224J78pndt2MV6dhLHkywFNtFI9?=
 =?us-ascii?Q?DU01qc+fR+rUCKNUizc/Ik8lTDOboCSTvfqvEWVzwlP7MHFQEvGSmeMd3ZED?=
 =?us-ascii?Q?eFQqbX8YCyxgyUV1XswmMRRO96v5mESOD+RrYU+8paNTCzpn7jqlxuQ+0skn?=
 =?us-ascii?Q?H1/6mbUkbZ9a2mgb9+UrhBxMar3Gwcw9ZACizDu4+HwagJI1+jzQnaqPV0O2?=
 =?us-ascii?Q?AecUgCOaIuVtcgn2EtlffFwM0QsaUjGe97/hXDM0NQCZeaMVxg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZIS4DxIQS+H5l8tanph7jm3aLeLJzXvpxHD0gc8tsIW2Q1MeH1CjIYaQ9fIq?=
 =?us-ascii?Q?QZ8RxAX1RPFQmJ2wTFxWwmgn1yAVBD21J6y2KLtwDZP/J2LfJsWw6hXVOsmN?=
 =?us-ascii?Q?2CNYQp8w8vHiPVCJw6QWh12bJlGRNPtWkzBIDL8qOLWJDzgzzd6s492hZpDQ?=
 =?us-ascii?Q?HEybayb+q5+cNBTByM3i6DIQrsbsH45eGos0LWAeIYtk9FsTW2NsskEBfE8g?=
 =?us-ascii?Q?XxoL5whKjDpQuUsCnYjBTKTH89roKJQfjgo1cbCtR9zsrzIBYuYn/a9em9Oj?=
 =?us-ascii?Q?JVPKNnhDg6tTOw71ZbfME0twReWOZGiN4dL1v7XGumcvtQn0u54PfD1Hnazp?=
 =?us-ascii?Q?epIYWiqgmRlc6J7gkwtA+hunDyo1qxVD6myGt+iUHgjr087BNdMAxLPMd7Vk?=
 =?us-ascii?Q?dR1Qe90cvPEj/J6mGr5XSZBc0b4fy87dnMnd2yRvJlFz8Jw+KiqFqNVGz9b7?=
 =?us-ascii?Q?9vgqxqw2HUh03+rMS1Sr2kre2OWkbFpY5z/EHKLVoG9VQTn/N5Ep2h3ZiI3w?=
 =?us-ascii?Q?DIMmj7aFKlm0j4l6Tyv74Y2q2MSd5PDxh47CaeoNMpMnkW3+syJCZjyhboU8?=
 =?us-ascii?Q?ze9QYuDDAoONbaqlonL0a5mTsff1yC6gLbfDcKqGuVr+5VCGPbXtQVyjNR1t?=
 =?us-ascii?Q?xvlQaGW3J8vM78YAwzCNPV0nQ+lNTH8P1wZpN3sEr9SE0qQVmtW4lkWl+1rv?=
 =?us-ascii?Q?JfmMlGA6X73aq6bRrO5melC5OAbJeCUmjN9Z0sakW8Hn/7Q7sZW4Q6Ff/SzN?=
 =?us-ascii?Q?QR/cHM1lU8CfxYrw4ZJLW9/dw/It1dCwjy3Vtja/3bszjWbn8Hhc2IaYYPgd?=
 =?us-ascii?Q?JyBZL6VYBqn86QmmmnuAj/FoOvpojZTzxOTrLcTcOJvZj8SqgDLslORoWDzc?=
 =?us-ascii?Q?U0jris657oTyLwFsYmlv3ezGpRlpCfBizfiZv4GKCPvhQl7taue1cZ3ZWB/t?=
 =?us-ascii?Q?mkiAk7WezNGmFgKlN85nrSYVb5xQnTeZee5+uN+dP6KL3hZHk1jIFpZMtUT6?=
 =?us-ascii?Q?xhDshs6vWVeQAzMumEIoGCskxp/Vhh9sU01+x222+ULuvUC2kka3DOnOuSNE?=
 =?us-ascii?Q?lONLfJljkL4f+PrUbxN04gs/hUwGZsFzAGTphKXci1+Nd8ds1WiLi1aE/7j7?=
 =?us-ascii?Q?QnzjclikWIsrb1EX1QIKFcIeC2TRrhXmFqYiH7Je0Hu8YgIYsh9XAExHFN5s?=
 =?us-ascii?Q?gSZ8j36RvryxFahzg8uh5pS3RnO2SN4+uBHrKvbFRhXoMSGETAYtPrvZCU4W?=
 =?us-ascii?Q?T0weqWrAHtP3+xR+aptjADB1PYf5EJThR/z1BbZwCth4Vng5qCL9zEdHAr75?=
 =?us-ascii?Q?BjL9ZBb5EzciJPvYKgSScAktcAKKW3vnYUJPv8JnmCE1vRzp/bN1emPpL5ji?=
 =?us-ascii?Q?55aBf71p6AWcC636p9Vs15rdtbz0VMGlowPzSzRY9zoIyh8WzfiihKKGT/QU?=
 =?us-ascii?Q?T1qZaR+iBEBeL25vKl8RC7Vzw47YcbS3007jfUgltDkKpktX3ug6v4UJrpEw?=
 =?us-ascii?Q?qvFZcjE2Sbp5PIR5MjIwYdWmRj9ssr+y6pznea6O1vaj9NmYuucBRXILxPiF?=
 =?us-ascii?Q?ZypBtWWlt4ALjYXe5xbKVENIEjolvKf+AfWWz83X?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d77d36d-aecd-484b-2eca-08dcb1f9701d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2024 07:13:26.5685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gOPlc3YNIBCxwTN57PeOT1hvI18w6vP9M4WVxapIH7FYac5SwM4DgClk3vR0+ozIZu/lRtMbImAUYqwqEw1fvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4537
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 12/12] drm/i915/intel_dp: Add support for forcing ultrajo=
iner
>=20
> Allow forcing ultrajoiner through debugfs.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 11 +++++++----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  4 +++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  6 ++++--
>  3 files changed, 14 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index c0a1f2603274..da6d8acf710a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1208,7 +1208,9 @@ bool intel_can_ultrajoiner(const struct intel_encod=
er
> *encoder)
>  	return IS_DGFX(i915) && DISPLAY_VER(i915) >=3D 14;  }
>=20
> -bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
> +bool intel_dp_need_ultrajoiner(struct intel_dp *dp,
> +			       struct intel_connector *connector,
> +			       int clock)
>  {
>  	const struct intel_encoder *encoder =3D &dp_to_dig_port(dp)->base;
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev); @@ -
> 1216,7 +1218,8 @@ bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int
> clock)
>  	if (!intel_can_ultrajoiner(encoder))
>  		return false;
>=20
> -	return clock > (i915->display.cdclk.max_dotclk_freq * 2);
> +	return clock > (i915->display.cdclk.max_dotclk_freq * 2) ||
> +	       connector->force_joined_pipes =3D=3D INTEL_PIPE_JOINER_ULTRA;
>  }
>=20
>  static enum drm_mode_status
> @@ -1255,7 +1258,7 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  		target_clock =3D fixed_mode->clock;
>  	}
>=20
> -	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
> +	if (intel_dp_need_ultrajoiner(intel_dp, connector, target_clock)) {
>  		joined_pipes =3D INTEL_PIPE_JOINER_ULTRA;
>  		max_dotclk *=3D INTEL_PIPE_JOINER_ULTRA;
>  	} else if (intel_dp_need_bigjoiner(intel_dp, connector, @@ -2465,7
> +2468,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
>  		return -EINVAL;
>=20
> -	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
> +	if (intel_dp_need_ultrajoiner(intel_dp, connector,
> +adjusted_mode->crtc_clock))
>  		pipe_config->joiner_pipes =3D GENMASK(crtc->pipe + 3, crtc-
> >pipe);
>  	else if (intel_dp_need_bigjoiner(intel_dp, connector,
>  					 adjusted_mode->crtc_hdisplay,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 6c607a218fbc..b23db3eb477a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -156,7 +156,9 @@ u8 intel_dp_dsc_get_slice_count(const struct
> intel_connector *connector,  bool intel_dp_need_bigjoiner(struct intel_dp
> *intel_dp,
>  			     struct intel_connector *connector,
>  			     int hdisplay, int clock);
> -bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp, int clock);
> +bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp,
> +			       struct intel_connector *connector,
> +			       int clock);
>=20
>  static inline unsigned int intel_dp_unused_lane_mask(int lane_count)  { =
diff --git
> a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index d4fc4439ce2b..b4351d37b963 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -579,7 +579,8 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>=20
> -	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
> +	if (intel_dp_need_ultrajoiner(intel_dp, connector,
> +				      adjusted_mode->crtc_clock))
>  		pipe_config->joiner_pipes =3D GENMASK(crtc->pipe + 3, crtc-
> >pipe);
>  	else if (intel_dp_need_bigjoiner(intel_dp, connector,
>  					 adjusted_mode->crtc_hdisplay,
> @@ -1444,7 +1445,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector
> *connector,
>  	 *   corresponding link capabilities of the sink) in case the
>  	 *   stream is uncompressed for it by the last branch device.
>  	 */
> -	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
> +	if (intel_dp_need_ultrajoiner(intel_dp, intel_connector,
> +				      target_clock)) {
>  		joined_pipes =3D INTEL_PIPE_JOINER_BIG;
>  		max_dotclk *=3D INTEL_PIPE_JOINER_BIG;
>  	} else if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
> --
> 2.45.2

