Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EABCC3CB1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 15:59:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D9510E81F;
	Tue, 16 Dec 2025 14:59:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N8D87Eds";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF6D610E76C;
 Tue, 16 Dec 2025 14:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765897149; x=1797433149;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ip/n7ECb+NPUgI8aWR02qVS0PEM8g5tyodbFpqWB7Zw=;
 b=N8D87EdsGMY0vYn70Gb2HbK1+uZCpxF2zcy0g5bgnHClBMfY/psLbGb9
 L+uZGpt6oGgoL2NjugKhPyORB+uwCFzVH63/3H3pXQKc1UJR6bwiXY0Xz
 UgY7+PZuMLxLH9grU29MV4obWViQ+Zk+kWcrHI7CfQSLKPLrQKBdFq5Zo
 hg5iafxVmBAc5nv3ystPrMXsTaZyEyLGyCZnWJyhaSaGN/bC3divgwUso
 mqZVDAQU76jK127zxArQoDLbAE1ruX/bg2EzrrDt7MidRlfftb5K75JR2
 HB52hJDIyqEWH6K3WI5PLHCJ31kwcISpgY1aCnh/tbrVGvx0akVf0X283 w==;
X-CSE-ConnectionGUID: rz53fpX/Sqi4naHn4RA1Bw==
X-CSE-MsgGUID: A/WrbNcfSTGIspOQfHAOBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="67698362"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="67698362"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 06:59:08 -0800
X-CSE-ConnectionGUID: tdrSFzMiSy2HORnUEbbIvA==
X-CSE-MsgGUID: vRlzFh1VRKmaPbABXvRWZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="198024722"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 06:59:08 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 06:59:07 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 06:59:07 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 06:59:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BUg/kV7C94MoJB/hDLWmH+95E+4xK7ciHYACSEo4vTXm1hXSJLT/Znx/2b+U0zDUiRWwqzMtAEEuA8zbU5ekzwjIAfYMhx9GJpswOhjJqpW+8oIuzLSItBoRfEeYKFlc0SwTjVJAWAHa2wQB69+hX/2B0bzEo332nOXlYB8dfgEvjFQpHGAn51l9kABfpTLSX+RBAyOrT55PSz6PMQDuy+5Ycm8Et4DnSdK2TNeTAqoqZ1ytH407YDzEtV1KZM3RrHmeBG4iGo6yE9I3+9qA65Nbq6vkFoYO3+a4XNATos+91LdfNhEzM1FnVU4AXEmkO6JsWmqLQTN1aRXdiees1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0SoFo4L0wdBGKw5DYW1nOFjegIFjMc5TLYVMEQ3UsGs=;
 b=pET5EupC5A7Hi4ANS5A+fip4vTBW4ciOcbw/szfY2CKniDxhbPW84wsKSQ0aiRPDHlh+2r/TCBgp/maJdT8rIIgV+wIPDP4J5zZBOfB8tio+GGVvORPcls4Aif6bBMef6Lfvum3b0D8LeVpx8jnvNTqZ4UTyDX9QMY3XrZrh1vNLVm2qVkl+qeHQTjgNNLz/YTF76vTSDtojLJpSD1OsaL6ZzZRWLRtpzS9YM8mktdHEtkuygQh32kQZ1L6Ay18kKSPMDudOM4kNxx0P2GhRPMJbTmiR56A0m7CFsUe+U82QDsumnITFi78+skXs3taXZyLzWm4cg/Zdm4Gqt9enmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by DM6PR11MB4626.namprd11.prod.outlook.com (2603:10b6:5:2a9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Tue, 16 Dec
 2025 14:59:05 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.9412.011; Tue, 16 Dec 2025
 14:59:04 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Syrjala,
 Ville" <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 3/5] drm/i915/display: Pass dsb_commit to CASF helpers
Thread-Topic: [PATCH 3/5] drm/i915/display: Pass dsb_commit to CASF helpers
Thread-Index: AQHcaNUpsonZIsbj9EOc9NN9WgiDr7UeONcAgAYXuJA=
Date: Tue, 16 Dec 2025 14:59:04 +0000
Message-ID: <IA1PR11MB64678E5C071E2E89EA4E1E05E3AAA@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20251209062527.620382-1-nemesa.garg@intel.com>
 <20251209062527.620382-4-nemesa.garg@intel.com> <aTxEMraPc0HmKBff@intel.com>
In-Reply-To: <aTxEMraPc0HmKBff@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|DM6PR11MB4626:EE_
x-ms-office365-filtering-correlation-id: f58294f7-6b49-4086-d22e-08de3cb3a804
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?jE/D/RAEGIqnVIQgoCz0OWB6nGco7qcOuOcbpR70hVZZf4jRjsds8ZKFE2?=
 =?iso-8859-1?Q?0R60OXrPLNPimd0ZEi+PW/g56bYjMK+YNgjcpO/OizyJua9JcVTtksEM6a?=
 =?iso-8859-1?Q?2yb7Wyk+USnKGhWlqS6SO837lNDR8rO4lPjkVUc/ZuUUhOapx2a8eAV5Gn?=
 =?iso-8859-1?Q?BkMs5jGbMvy/DBIBhvV+JruEBdc+9MOwtN8bowdn6AnW2MHjJFB2Iuarwq?=
 =?iso-8859-1?Q?lmQDgsb5aQTz4xrBCLDNR+Vg7GDWCNnwxB4iy2Bzmd2ms//CjlWZ79qs8D?=
 =?iso-8859-1?Q?skgPlrTQ0e94HOVS3p89veUrymgSdgcSG++4/Hj04GBUR4gvSfDu/LRqLH?=
 =?iso-8859-1?Q?DFE9XpVy8v04mDx33pRRpf0O3BgUtbx8uuuGjsA8nFbdzKhJYwZlOrjAyb?=
 =?iso-8859-1?Q?ecYK/34IjI9xXFsZdn3RJG2/lNGQLPKKaZzoZFs4EjwBe+xf0oxH38p6BQ?=
 =?iso-8859-1?Q?iR6azZj17YE3tyrzWTuWAn9MJ4ccqjrQGMYGpq3yr6UauyELEvUFq49qSL?=
 =?iso-8859-1?Q?iBQVqPOm5Yob8drvuHWcm7HVeTZWFA0UDtpGAq5scLjlOqYhvxghn5y0GI?=
 =?iso-8859-1?Q?nuYF3c4yr+LsMlIjXsxUCZTltYSeFcKoHJWVDtQMFcOS6BfWdRsSiGB3TX?=
 =?iso-8859-1?Q?UGldB+ArnJ8rt0i33jpP61Qywe1+MjQnvpdvzJItig9Xi0aRArZ/tlkFMJ?=
 =?iso-8859-1?Q?D0XUF0FGGzHvXuvs5VXVbrXthLtXSMpEhCW0uN933ygrEuj0+r3L3N2SR5?=
 =?iso-8859-1?Q?lyfeFekTGzlnz7mCp4/KNUlSruiTKoFmiVgAa10MhKr/LmuGxX9d6as2Pp?=
 =?iso-8859-1?Q?2DPujKStc2KrBoq/AMp6eFZBgDYXQRO6j0jn7+wWWLS9AkvqBu6FJwDQxt?=
 =?iso-8859-1?Q?CKapv6+ALwB0Z3X0iqb79p5GYeAr1V1QVSX0iymVm0aKiaQTk8qqLFgqI7?=
 =?iso-8859-1?Q?mb4tTdIzblg9rJoIgMwyedd5LFQCunPA6ypo83xtQ3cDlYXZ9x3BXXSuVF?=
 =?iso-8859-1?Q?Nyy+ZOnJ3cJwcHSAFTM4FIN68N2BdPzIUo5/BaFiqF5vNkbZHLLxex0Ver?=
 =?iso-8859-1?Q?Gfch97T8looQu6AHF3gKjSD7rOSpLeNBw1NKua2a3ewRbuhTyKfAntS4q6?=
 =?iso-8859-1?Q?c6NDdH4QKbPiHyRT/14wkwaZSRdAFwQ4mi/6lDvv2xdC2hOTmplwVvz6hV?=
 =?iso-8859-1?Q?322ldKLDJGXZ04NB9Cx/tVMy7ipZik54tH6ArUspo18bYBGTdX7jTTK8Kh?=
 =?iso-8859-1?Q?d/nwNyJE/EoCjs/udY9Gt89p4L2NGPD28C9Tqia3D6R4M/E2wQoUAJL0Qe?=
 =?iso-8859-1?Q?jnbknHO/TrZZVEHhnYBoM3eML4pQJNu8lsDBVLp0k8NTBnX3CLN0SENlBM?=
 =?iso-8859-1?Q?AceYS+qjtDwZsdwZVADG4vALAga8DcKP24Ve4G6pK31ono/MEJkl7Ql9zr?=
 =?iso-8859-1?Q?IXNeY5iMVhnmuz/+YWrz7Qj21UEIUOUv1V5TijIF8+h6M7EydOlKib0crI?=
 =?iso-8859-1?Q?MezyGOiKro6grGNP+21iUZ+/0RuD7JakDS9ocUlxFJK9B8oDi3bK30nLre?=
 =?iso-8859-1?Q?yncx8FcqX8KFMlIZbcOLyBaa8Oe2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?UsAou3yOPHCSAHQKdeA6oHpJ9L3kQ+mWeh5vihDiisMj3OJclAMOcAL6ey?=
 =?iso-8859-1?Q?ngAlZh+SeOyx5/BhtQwx43sGeEeZw0T0vGrCwqyanVnwoeRaxD8H9Lqrjh?=
 =?iso-8859-1?Q?+RdNpDz2WszgCYL4iT1TQPRdjDJ14n7NFy//2Y4ukHl9BhWxu00Qzo01gq?=
 =?iso-8859-1?Q?rkVDrTUvqmiD+EXq/wYbxcjsCUdVrqEzFaLZtAMTYOS2zCwLJKHZHZ01rj?=
 =?iso-8859-1?Q?Tzr4bSCkl++Y86dj7iEvt5fGqiMU1qbKYLnCb3gj1cXAP/HmGaGQ49MdTF?=
 =?iso-8859-1?Q?ZY4/7mWJNtV9OHug4rIfe0ne1vmyUZzr7D3iPuJ+jqbuLyRHhTFA4IycNf?=
 =?iso-8859-1?Q?ZFrFkoj/A5JaDcfWLFILo3+YTX5aWSfKKaxudmZKoFmH8SamsPSHL/lFj3?=
 =?iso-8859-1?Q?06Ub7DOe2UJF4EMS0qZvTITD1lqI5RBNAC3jlgUVK4kFcBy47NA5PmX5u+?=
 =?iso-8859-1?Q?afBnOvPJPLNN/iUbBWpDPOoC0IOYhxbXu1vlb3Z58TLqvhfXjsZRqgzd5x?=
 =?iso-8859-1?Q?r6JW/47UDOdfMOD0hq2IGu2iam0zR/KfbJXKYR8msDy96b4mWLIF6XDtq9?=
 =?iso-8859-1?Q?vHBVqgWDwHYHGwogujqrG/GdzKNfv7XFqUHdidrD2QByowRQU/FJE/SJxF?=
 =?iso-8859-1?Q?Cb3NKB8ZjIoDyxxf3Olmo6BxiWC2wK8WuBjpHGSNCBe67n8yUoZUdOyqvy?=
 =?iso-8859-1?Q?xkEI9P+heIHuG2/UO2L1SM3YoHXb+6g1UUDF47qZ/P5P5C0BQzfMzxG5ir?=
 =?iso-8859-1?Q?2UXqbrbPzpkHmpxJ/zFP2tO7VETpE9RXKG/WWyzIeV78ErwnCNSa5m+6Bl?=
 =?iso-8859-1?Q?7qNFIx4wFnbPHyTDTugyv3alArscZ0FJ0A9CJuUITmhPNjHfOq8bCHqS1h?=
 =?iso-8859-1?Q?aKKcGcm6Fa7Tao48R/oRBsON6Gg8SoxhjY85nyBtdPIuu0L12bCjm6jH3I?=
 =?iso-8859-1?Q?/+eu8R7hIQ22eltKCChwYk8do6EXPBStwvwFH9i/lAHQhwjuMtfW1faphc?=
 =?iso-8859-1?Q?+2x5sizDfM93UmYKoM4Q5YJOKav9/v6P0PAuCASTXPLZopRkb5hcB3HUN8?=
 =?iso-8859-1?Q?KHzNIPXedqea6ldbkWbNz6Q/mW7DBEIlfbsURSowz3l0634HcfjFUC4MQW?=
 =?iso-8859-1?Q?G35AWak3fB4nts8VRMQpcv4pQO9CzJFcXwZTMjW/2+wX/t1HNCQqOlZek1?=
 =?iso-8859-1?Q?D6GaoW7oAo2VBnuFXcH5dChSoGHNpOYwaX94UgJppOcRut5AnK8zA7S3HE?=
 =?iso-8859-1?Q?3ZQ8p8rf2pnvvJjj3RVIuBkwxDPkJsyEG1wRuQgkHt8Gv3uxS9BrQv9pBX?=
 =?iso-8859-1?Q?R2pWBKAt4SEMpnV1zE5CgknC5+NQh+YQ1t7hbhhsMxUEZUinnFC43Bi3Ba?=
 =?iso-8859-1?Q?cSD2Ek4id/xdJ0ITjWMT0Oot1aKx+MQeM80EMNmL2rnIcr2/MDdm/FRSdJ?=
 =?iso-8859-1?Q?mwIjUExvS5Y9an3aMaQWWAUCrvwuX0FxveP5ROhA+dHry3GJHPbOrmWV0i?=
 =?iso-8859-1?Q?/eR+amRs4PV2gMi/fgUw8BwGV/lagtWmFKv80hhFnyh0FaWNIb6//eTtot?=
 =?iso-8859-1?Q?Lr27bmZsSI9XWTsP7O+nBl4dwiG7gzJhnJltfSBue5N7toEMxezyt2FXHj?=
 =?iso-8859-1?Q?UDF0yrB7PGvBHCOB4jjP71lLvYXhv/e4U8xbYsu0VNUHinKsmSRwlvfryf?=
 =?iso-8859-1?Q?Eix5KCm9dZzp7/BrTN/dd6A9hPKjhYVvVKNdL35m?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f58294f7-6b49-4086-d22e-08de3cb3a804
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2025 14:59:04.8292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e1rpxwa+G8Ejhx3KX/7NBhKyh7WPgceOV82vQcYXSqSfADIQ8GUsZA9BelpNtsKH0sPmBDTjV/+KZ0x5lF8p1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4626
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, December 12, 2025 10:05 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Syrj=
ala,
> Ville <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH 3/5] drm/i915/display: Pass dsb_commit to CASF helper=
s
>=20
> On Tue, Dec 09, 2025 at 11:55:25AM +0530, Nemesa Garg wrote:
> > Incase of non-modeset enable the casf, update the strength or disable
> > the casf through dsb.
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 256103d55409..7edfc8c2ae21 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7300,6 +7300,8 @@ static void intel_atomic_dsb_finish(struct
> intel_atomic_state *state,
> >  	struct intel_display *display =3D to_intel_display(state);
> >  	struct intel_crtc_state *new_crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct intel_crtc_state *old_crtc_state =3D
> > +		intel_atomic_get_old_crtc_state(state, crtc);
> >  	unsigned int size =3D new_crtc_state->plane_color_changed ? 8192 :
> > 1024;
> >
> >  	if (!new_crtc_state->use_flipq &&
> > @@ -7332,6 +7334,16 @@ static void intel_atomic_dsb_finish(struct
> intel_atomic_state *state,
> >  		if (intel_crtc_needs_color_update(new_crtc_state))
> >  			intel_color_commit_noarm(new_crtc_state-
> >dsb_commit,
> >  						 new_crtc_state);
> > +		if (intel_casf_enabling(new_crtc_state, old_crtc_state))
> > +			intel_casf_enable(new_crtc_state->dsb_commit,
> > +					  new_crtc_state);
> > +		else if (new_crtc_state->hw.casf_params.strength !=3D
> > +				old_crtc_state->hw.casf_params.strength)
> > +			intel_casf_update_strength(new_crtc_state-
> >dsb_commit,
> > +						   new_crtc_state);
> > +		if (intel_casf_disabling(old_crtc_state, new_crtc_state))
> > +			intel_casf_disable(new_crtc_state->dsb_commit,
> > +					   new_crtc_state);
>=20
> I don't want to see this casf stuff becoming even more special. It needs =
to be
> made less special. So I think it should get completely buried inside the
> existing pipe scaler/pfit codepaths.
>=20
Hi Ville,

For sharpness we need to call casf_enable during modeset as it will enable =
all registers related to scaler and sharpness and then we need to call casf=
_update_strength during fastest
as only sharpness_strength needs to be updated.

Do I need to add something like this :
               if (new_crtc_state->pch_pfit.enabled || crtc_state->hw.casf_=
params.casf_enable )
                        skl_pfit_enable(new_crtc_state);
and then call intel_casf_enable() and casf_update_strength() from skl_pfit_=
enable();

> >  		intel_crtc_planes_update_noarm(new_crtc_state-
> >dsb_commit,
> >  					       state, crtc);
> >
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
