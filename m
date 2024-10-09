Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 925FC996508
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:22:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374BD10E6AA;
	Wed,  9 Oct 2024 09:22:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YOeC72oZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D3210E6AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 09:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728465728; x=1760001728;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lMh5weFThIXo6CkzV7Z57pzo9A77wU5jD1SFeQX4jH4=;
 b=YOeC72oZ+EHWZny+ZPgSDRX5pIrvX8qJ3wxeqQ+Y//3W1xWD/2O0cNRc
 jBJnTUB6PDmI5xRdvs3MhVHx5eWWA1Q1iuhDu7Aufg7o8bqPMS0kBbybX
 Xasr+TvIcZV4g5cDaJ25c++m5dPwgZ8Oc42LWBR1FrN1oEnvbb+6xIyWz
 KLNBFCRYU/9sSoq02TUryp4vAf4DBSjpenmu/xjV7OrHPfdfylYJ/8a1W
 ObwgOO+wiUS/pfyY+prQgNLNeX9up0RjtqDDk9U6XGO0vB4FMDs2xwz/p
 ng0R5qVRuIAiCdwTRF5YmOvOaJ7Vp67gykMCcvAmtLSXumAtsSdz1rS3n Q==;
X-CSE-ConnectionGUID: 0o+2ahQvSdeAdkAyDk0Vxw==
X-CSE-MsgGUID: CihTzFt/Tbm2YiwKH0SPqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="15374215"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="15374215"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:22:07 -0700
X-CSE-ConnectionGUID: 9vfSZRO1TVSErnO9KHPSVw==
X-CSE-MsgGUID: TP/OI7aFSVS7uXSJTUNbmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="113670452"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 02:22:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:22:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:22:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 02:22:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 02:22:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b19ZIY0+Ytrur8GlSRJ0UwlWgmTsiGj1ZFdoqJC/oKTHnYBEgX7380HZhnwj8HsRj4cAvpaKRi1phXR89q9oAoiGCkDTEvByt1iaicyfaSHn+FlR1snVvstigEkHwnjLGQNwr4ir/nZ5MvT8RrZ3FzfzfMkwz9tFfCMndvfWqcSy9LrrCk+vwP5wPM4F3nvYDWn2yG/+Ygc0LNEkesEQys57c6z2hG7VFfXFWCPPKh7cheTZ/fFI7x0NxmmUOkxICPZv+nXMNlTBycFM9V6kG+I0FcE2o/WEJsGsLBe46oOrjqjpW0763cH+fhOwgu1cG6YZO/fvcqTkyKJvGp6f0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=idrGmUo9h+1ZCR4eN+NJOQIo0d39eKk5hlRzlAsgAh4=;
 b=ThmSg3RT65pugGod1ux2nqLd4A7xvEqijC22A8pRff3FsxMn2D2wx/RKzS3uY/vfYq9s2KZQ91IQOdxH1xlyEikaDfmbZNtGZqp6ZzKtW6u1TpBkXXrJ4eZXUPodY3tC23JoEYDWE35R85sL6pa3dfi4cmNOe6iW83HZoT81htkM3YSyC/vxdbn4L0tpYyh7GGo3RxR4YzcZ81DKwxEy+0XcQaubGnTX87zsrNn4i4DsMown04vnuivhGaBlMnkxaXw4kcOYBvMjc//hKWPfSeVvHJK1KbTSHc+bteq9PvHoDz9DlUqWA5qQ2NdzezK/zelNRSL/N5tGtf6kE3uYgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SN7PR11MB6969.namprd11.prod.outlook.com (2603:10b6:806:2a9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Wed, 9 Oct
 2024 09:22:04 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8026.024; Wed, 9 Oct 2024
 09:22:04 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr possible
Thread-Topic: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr possible
Thread-Index: AQHbFAg7z0KvG1q1wUycuWkVlIGvFbJ+EISAgAAgksA=
Date: Wed, 9 Oct 2024 09:22:04 +0000
Message-ID: <IA1PR11MB6348BFC1F0DA41D2ECFF52E3B27F2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241001134703.1128487-2-mitulkumar.ajitkumar.golani@intel.com>
 <ZwYvs4QetgZ-aL3j@intel.com>
In-Reply-To: <ZwYvs4QetgZ-aL3j@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SN7PR11MB6969:EE_
x-ms-office365-filtering-correlation-id: a4e26fc7-d94a-4e9b-f179-08dce843d6a0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Gdz4QEbeMluZ/T2EkaHWfad94Ys4ntk5jg/GZDWepk2WxIFRONHnFlZhrx?=
 =?iso-8859-1?Q?wI5GKo0QC9CXsFhv/mYU279lw1/S1JGlC/irFEr5bkGcJDG9xbRrFgSFPP?=
 =?iso-8859-1?Q?nKiyBMOZY7nzZC8CsMcCIHPIzLKMgOGKcUF/X4GLbjrYK5lht9tXkQcgxF?=
 =?iso-8859-1?Q?sQxW8PGwjzdCcDGm8wfpWZBIjvkGP7N0wm0drP58bCOI7nKsJYBWOW5ez7?=
 =?iso-8859-1?Q?JP85o7sHw8RlZ876ifvS3je2wbxYrZKAL38ng+SYB7gp3ICauceMMjQlMo?=
 =?iso-8859-1?Q?2pugnXn1U6VJlAsEmJTJx5KHDlMRp4QiA32Nw0Mk1NLG6SLnKMDjLBSMV6?=
 =?iso-8859-1?Q?GK7hbGKsWMhfBQ8AKl7YAs1dIyLEU3EQagqbV+nCnMbd+zLY726y27JBsn?=
 =?iso-8859-1?Q?8BYtQuUoMcCxteyKdRNCMs7sTFs0SSTK18zS2X1WgAuQuzW2v3rdoXSK6+?=
 =?iso-8859-1?Q?kTJ2JTIc5sZzbv7Y5DwxnfmohxiW7X7p2LJyHgH6uuZVTGfkgj45/kye8W?=
 =?iso-8859-1?Q?v58dhY/xBxph6UKSRHTnEu3NeKLUU9K3TN5p7D0vxoJfAfcqLBHwFjHD1z?=
 =?iso-8859-1?Q?g464V3GuucJrgEmVpcOIHDvV6Yk8Q3Dq8/kFaRMBjjeCOo75RjOMrWsGFf?=
 =?iso-8859-1?Q?Rz/kEwlcVg71hQOOzkUTVhP81uB7goQgw7H+s2ILcqFUyqTP2JFPm14qeN?=
 =?iso-8859-1?Q?vopjM5bdTZfnk6S9Opyp2aDErPv+RWa/OPYUGF1nu0IziauAn4Fzd5nU8A?=
 =?iso-8859-1?Q?tuVvChSseoMRN1D1KMUSXSlX9YQfsNEEeCcvWuvbWq3xG6g/duQg86IAdx?=
 =?iso-8859-1?Q?RPvwoIfdGw8L9E8bvoV43RyQnkPW9UyqWeVvPhvzvSGZv3uKt+J/6pNKZ7?=
 =?iso-8859-1?Q?sSIoa6TwLLCwYAtLSKWjQ3LdMYWkPzYJKkiVDmueWN13n9md37pHC+JF4u?=
 =?iso-8859-1?Q?huv3RfEkBLntICzsO+jM1tsQ3fSACzY6guQrrz+0XslD/LA0MFLiA9ab/3?=
 =?iso-8859-1?Q?d6wS2TspKRxgKpuaNzzsT3rHvX4uFqzSb991QwnKk3EqyksKUtqQ/ucx+g?=
 =?iso-8859-1?Q?kLw4hJGKOhH1aVkk7YzXV/jTwgRwHn7iQn/AAHLZ10hvWWA9byY9EFAfHQ?=
 =?iso-8859-1?Q?4ag1/7hZTWmoEdsrWVbeDnjZmzvEWXCa1ciQB9J3FPn6CHNL11Er9ldivJ?=
 =?iso-8859-1?Q?N66LZGc+pgOsmNBZVVDuivNLd0fE3bFvwd60RwNTVr9r8w3ElkauH6xztS?=
 =?iso-8859-1?Q?iS7Lu+B4SZgYPkrPiruizeStpkMghLHrSFSk3W5fD01xwOrlMiUoiOSJkB?=
 =?iso-8859-1?Q?brWfyX2q87R1sHrYp4fKX3W9XB0iWMUmQNoleQCz2EQAdyetBffbiDq2yk?=
 =?iso-8859-1?Q?32oKY2QQuU3FzV5okaxHtRoHKjj4Vdvg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?yWVx/bfXGp0VVj9sbM96XhB3j+xSqnFvyD8+QqumyLV5hNreW0G+puBHHX?=
 =?iso-8859-1?Q?5lIKoPM43UFWpkkuF+xfZ8fmNzsZEqc/pJZPDMZRBUenzNeL0ajCknNgEz?=
 =?iso-8859-1?Q?fDvHuK0rxAg16AA2LrXS5QSJ2aAELAGzCRM966iil/Y4ayqyJ0UHxvHfu8?=
 =?iso-8859-1?Q?F+UFY/i+4Q5WfyjPscA58o4u6qWdu9uyjHoJKNlhhT57rlrKzSnyvTvRoo?=
 =?iso-8859-1?Q?lvvrFOSn+XWu+9lSxzoXo99URggqFmbAKtjHdSrzZ5fdtA1itAQ5LjbLuA?=
 =?iso-8859-1?Q?78RLO9bVFmCvPg2a47Twdozf628Vb4Si43CFPXKuD5pOu0wSoJolRQ/PVn?=
 =?iso-8859-1?Q?YKvxG9Bp6SSR9JqTqNfuYz0zfIeBMsQaVAyB+0LFwABZMoGGFVFYm1KF9O?=
 =?iso-8859-1?Q?otpWUcQkTx3AYMkik9JAXQckndeJyMd49JlqXdPEwMcmP5CoNBJ7oB4Pkx?=
 =?iso-8859-1?Q?RD537/IFNs/Ix7B7AncBt2yyDZTaKCVXesbeJ2ZrJLz4fsgE19sc8F1gs3?=
 =?iso-8859-1?Q?dm3EInKCrjC4YAHnFL3iZGBM2o+XmwZ8dh4cWMfNZPj8sLalSW49g3oLdm?=
 =?iso-8859-1?Q?6CTBdMZzge4A+2/VYQd5x5MyH+LpcQtORVGT8Rj3GlP/ycVKEhO1ZbaV+z?=
 =?iso-8859-1?Q?nCpr+E99fhdbdAo89jzTL0dNIs5epFBkRFOcjH8gAvh75fqvspPdV5P5oV?=
 =?iso-8859-1?Q?t/A1qIXJuPMwZauyA9dg+VW2r/wBwfQ39Q+yTCWe/F2JHd8YnVHmugWcg7?=
 =?iso-8859-1?Q?uccDoYP7hBF2O3ifBsVpTS9evZVVtvhrH0OTI/hzFduUjfhRsqf325MrmQ?=
 =?iso-8859-1?Q?OmwzluYRI0JdwOdxY4hurLbiEG8yDUrPJuD1lNRogb/hUMvEgDNbpWCEpa?=
 =?iso-8859-1?Q?6pxOz//e4JT5z2vG/01ZNmU/w6bDlDSUddYpUtArgq8PcrU41rq7rRNScu?=
 =?iso-8859-1?Q?ZHWCsoZJdUQqaknFDjmPm0F2ZqrpqnABkDDBwHGGyMvS/Y9N1vXgKx8Sjd?=
 =?iso-8859-1?Q?rM/oP/KGXa5svFaL+Tqhl8zZ6gzMazvcdS411VuSzNiAlczKUKVPTJQyDW?=
 =?iso-8859-1?Q?qtfqgugzBIyhMGY6Q5DsGQdL4D6mQD+x4pbYxVc5B33tvxoGCp+CHZ7PKA?=
 =?iso-8859-1?Q?hO6JhoFBlLuXgjjsnQIOHXmQrE3+YJtdvOKbPF/N0VPfQV6Ak5QBK5jOFl?=
 =?iso-8859-1?Q?BOHXIae6I6urybVLnqLOnC9ifVEr6B4OxNEJeuRpmIWbFjK1AqWhJwa5bi?=
 =?iso-8859-1?Q?hFF/sLLKivD9Qs87emi9WTL6lY9ZTRsa2c+cXr+gADzNpxKy8PJJPrDkVF?=
 =?iso-8859-1?Q?Xm4H5UmVmOadiwoF9slejjsmSgS+u21VNPYnu+qnCG3BRwMUuQB9LgGwrT?=
 =?iso-8859-1?Q?j1wXZB51dKPVAVkb9UbqG2c3qV9pUfgCX0jgCtclKSo0qzar2xlghybLPp?=
 =?iso-8859-1?Q?E/a6OVEzY78JqCPlxIghGkUCr7uWqesgPv/JpAt1YrF1FHiYKq79irmt3Y?=
 =?iso-8859-1?Q?b+wKDzEfcvLSFL4oH9kuikKDHnq8sr1uprsVpx2XZaoJmGB15B2YoaIeej?=
 =?iso-8859-1?Q?iu2ag7tR0EJWSi/8Eci5oItSwPPlOj+0HLhmuZikYBY1yOzlAHDLfzH02e?=
 =?iso-8859-1?Q?CQY9eYbBVkmXEipXdDTExcMFpjvHo7cZwDU0SgMGsXTlA85eGVnUl2meBR?=
 =?iso-8859-1?Q?JE763HF4kbGJnBfe56k=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4e26fc7-d94a-4e9b-f179-08dce843d6a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 09:22:04.0952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5q2y0DOXXmR0yileF3PfVLH4/OKrzzpBG6GZMgGOWqlClOv3FQdC56YtMm0/1LkqDACRqN/v8wwN9xTwUWw6tVs5kqrwQTmyiOUqfEW+RPCWC7maYWJILiwAwzZdQ6+Y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6969
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
> Sent: Wednesday, October 9, 2024 12:55 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Syrjala, Ville <ville.syrjala@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr pos=
sible
>=20
> On Tue, Oct 01, 2024 at 07:17:01PM +0530, Mitul Golani wrote:
> > Add helper to check if vrr is possible based on flipline is computed.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vrr.c | 7 ++++++-
> > drivers/gpu/drm/i915/display/intel_vrr.h | 1 +
> >  2 files changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 9a51f5bac307..79db30e31324 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -56,6 +56,11 @@ bool intel_vrr_is_in_range(struct intel_connector
> *connector, int vrefresh)
> >  		vrefresh <=3D info->monitor_range.max_vfreq;  }
> >
> > +bool intel_vrr_possible(const struct intel_crtc_state *crtc_state) {
> > +	return (crtc_state->vrr.flipline) ? true : false;
>=20
> That can be just 'return crtc_state->vrr.flipline;', of 'return crtc_stat=
e-
> >vrr.flipline !=3D 0;' if you prefer.
>=20

Thanks Ville for the review,

I will update it to just return crtc_state->vrr.flipline in next revision.

> > +}
> > +
> >  void
> >  intel_vrr_check_modeset(struct intel_atomic_state *state)  { @@
> > -281,7 +286,7 @@ void intel_vrr_set_transcoder_timings(const struct
> intel_crtc_state *crtc_state)
> >  		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
> >  			     0, PIPE_VBLANK_WITH_DELAY);
> >
> > -	if (!crtc_state->vrr.flipline) {
> > +	if (!intel_vrr_possible(crtc_state)) {
>=20
> Hmm. Looks like we have a fairly big mess with the AS SDP and CMRR stuff
> when it comes to programming the hardware vs. readout. But that's not the
> fault of this patch obviously.
>=20
> >  		intel_de_write(display,
> >  			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
> >  		return;
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h
> > b/drivers/gpu/drm/i915/display/intel_vrr.h
> > index 89937858200d..af921dda4619 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -15,6 +15,7 @@ struct intel_crtc_state;
> >
> >  bool intel_vrr_is_capable(struct intel_connector *connector);  bool
> > intel_vrr_is_in_range(struct intel_connector *connector, int
> > vrefresh);
> > +bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
> >  void intel_vrr_check_modeset(struct intel_atomic_state *state);  void
> > intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >  			      struct drm_connector_state *conn_state);
> > --
> > 2.46.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
