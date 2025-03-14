Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D08AAA60776
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 03:23:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D5910E251;
	Fri, 14 Mar 2025 02:23:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DWXdMjUj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B6B10E251;
 Fri, 14 Mar 2025 02:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741919035; x=1773455035;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=I1DARaQsa1vwzlSb58ng71MSKLUGCGutZhSG0U2IlZc=;
 b=DWXdMjUjDTY8ib+dD5I73DEIsnC7OsBLILEzeB4fAWcuZOEfj15DLPFl
 70X7oLB5tWGxIFeCk0gDYCpVRm0IUIPnQuxRc0v5YKJKZ65CV2VCE6eeb
 gs2ox3y4ywW3MmdKKOdkeRpEYdRmak1fW/Ov4xwzDvHY4piySG3oFT40D
 Vy5g5UjymfDZR5K0k4zvuefifC1oNSydoM+QqXcYi9xcNaiU3+xdo9KjH
 Yh+TFSYhxAgyIuE0LZSUouvDqGgUm1cu/VaXW7eyMqfhIYuMmsWD6R2XT
 ImDFxZVkF0H96U47C8RQkwSyf/LZZ6hfiUm7RmhXamGcwtCP974d0UAoM w==;
X-CSE-ConnectionGUID: 11raMIlaRRmyKMypny1vQQ==
X-CSE-MsgGUID: yG/usLJQSJe8rGnEczXrrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="53699641"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="53699641"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:23:55 -0700
X-CSE-ConnectionGUID: ysHA7l87TOe62R1VTP/Asg==
X-CSE-MsgGUID: 9eI8R1z5TxCrIeccM8nE8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="121639659"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:23:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 13 Mar 2025 19:23:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Mar 2025 19:23:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Mar 2025 19:23:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lNQr7LUk5hMSXRC2tofhr+sDevikYVzCov4AaCHTmLXWzpUMbFkZoRdskSFpmCA41BqFO2dIhJq2XE6ugmbajT/RGVPRsbQg7oBXNALjdU5aQ6aNZqL223VKqJOkiJgjHrmCxkPF0LMEYdYnm8IqytxnbJV8w/usOqa93YV8tJqCr9zWhkzVNwVMuGnfKWqkGRr/i71MIPJGx8+7W0o/XsOWinLYhr/shat1e2dOHRoPdEsD/A3B7m6IuU5itoY+0/Lw7/cRg2zH+prGn08oOo4FLw2Ln5uDjZftpTe1ISME8zbW9pzVdUcIbu4KpkCW61tI9Dqv9l9dhRiYqEbzyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IyzewCHaC4drClH3WpWcmBdWmLaJYKTelRSMmL6TvDg=;
 b=wdH8os/fGtcVTQfs1jDfgGLFL8cC8jqx0fJ6Gj7/zeRGbrTt3mWygp6547SGA3F4DW5L0yw/p/pz/Z3gFuBKkGPtY3+ZJTAQMKA5YdaUqKAYBH5B+D2KYkBg7DMZfXZhHjhCUH9ajX6xBuAoq0A1J9+yfliFKH6mH2h/bhgySFBdz9+9bEzfdg8PsYMlYwH1FwFwNHyP8qIsDGp4bKjc4ALjtHGrRjuVJQXi4/sLCjD9Iq6EsA1f0y+xTwuqyg32MPVUfU7UlZ3lnwYwhad5rPUyfAhp8D63MLQa8RYBrgnlJqULjZzoqPQ5TPjMzFQbbijjdphiafEm1jkKFCvqqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by MN0PR11MB6278.namprd11.prod.outlook.com (2603:10b6:208:3c2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Fri, 14 Mar
 2025 02:23:46 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746%4]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 02:23:45 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Ville Syrjala <ville.syrjala@linux.intel.com>, Vandita Kulkarni
 <vandita.kulkarni@intel.com>, "Lee, Shawn C" <shawn.c.lee@intel.com>, "Cooper
 Chiou" <cooper.chiou@intel.com>
Subject: RE: [PATCH v4] drm/i915/dsi: let HW maintain the HS-TRAIL timing
Thread-Topic: [PATCH v4] drm/i915/dsi: let HW maintain the HS-TRAIL timing
Thread-Index: AQHbkm0/3weI5ZtOJ0S4UnI4Q2puRLNw1ykAgADukXA=
Date: Fri, 14 Mar 2025 02:23:45 +0000
Message-ID: <SJ0PR11MB589430343B312A87A1041340F1D22@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20211217100903.32599-1-william.tseng@intel.com>
 <20250311100626.533888-1-william.tseng@intel.com> <87h63xdzlt.fsf@intel.com>
In-Reply-To: <87h63xdzlt.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|MN0PR11MB6278:EE_
x-ms-office365-filtering-correlation-id: d6218e1a-7b6a-4ae5-7701-08dd629f3f46
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jUqid5/jTkp/exLTva3Jjq4FuOhJsgoDatG2vPrxi3U3iDMR0tTKA6zDEBkH?=
 =?us-ascii?Q?Qg69OYbBcEtHmDzxHte5iXZuqyz5Ap8Ukn8Gfv5opqcndrtUvMXWZqcYBBlJ?=
 =?us-ascii?Q?o48x/oyMOCZPBqMoXpDzgT0t6R1mIQAThNxfkyCYg73hJokAk+ULGiRexUNL?=
 =?us-ascii?Q?DPXwtDMSoZqtltYDDKVO51toslEF3f0r1fTko6eW8/C5vVY8xVDz9EhBFOzE?=
 =?us-ascii?Q?jiMA6Fik+LP4uSMwp3kX/VG7QqaHbGIW6TfRb/XQk5MShfD72b0MIBUqxAWQ?=
 =?us-ascii?Q?DBBQFbaiUQqTJ2J21NBMyPtBEDionzdRuPyclg/fODs4PnpFgbhzjNPTYmRD?=
 =?us-ascii?Q?QPWoS6cz5X3EnVTZQPglZQ4gnnUviSWYHgDsxAS2YF9FDS+QlYcApAg+O3VV?=
 =?us-ascii?Q?z8Sd7AIQVtHyMJWjGTaNyfYgsPUgO6fEv/LQyo+yDM4GHt3cBWm71hrWwGhF?=
 =?us-ascii?Q?tAox4Xt9+oWJHgbM+UzdzAtJGGFMxjRRu01/SpmNLh7qfVRpFPiVInzr3qZT?=
 =?us-ascii?Q?tGKBN9bOtCR4DUOtgZCOkto2w90UotMb2fwEQYomvjlqTbMpoC4/wF+5owS4?=
 =?us-ascii?Q?D7st/09p4nByakbbaO7TUgtLYMtXG9ZWS6awaEVqT36jLdoea+I4Lb56xYM9?=
 =?us-ascii?Q?xOkdYL5001k+w4oKE6eAdlfQqUKof1M8XPK+UhWSCdRw5A0lH498pxtr3k5M?=
 =?us-ascii?Q?E3W26Uf8YvNFS3AtjKeznDAZiVGG6EoZfFCciHrDsU/DY/ZRwt6x2PSnMk+K?=
 =?us-ascii?Q?KGP1zRouJxbEKdikBc9Uq3Sl5QpHrkYG5tTJukSoaCRcK3xdz5gysScYqWSf?=
 =?us-ascii?Q?Oog70Aflj0ezoRErz0+8+58yCbhqn8ux3oKubEVtUuuOPYUV7jv0orHoVLAD?=
 =?us-ascii?Q?7AW9qcxLxmt7Ds5O18ZAXJLUaSLVBp+0t4FvHCb454C6Tc0KqHL+nUvfPFUX?=
 =?us-ascii?Q?XUXp7pxpsiTF7UEsnRDLgPPsnFP7JfQRORXBakxTm3ULIsQprJXmTDW+VB5k?=
 =?us-ascii?Q?sQMpkU7/7+ssnIL3TTXvPoWZ4xBXGg9b7eqoQIgMKV8Hh7Cq/2ficokVbg/X?=
 =?us-ascii?Q?xWZyAwlTQibWJnQKzfLITt/l5pXeTB4JWH5fliPbfDonbB8uwT5GZW22/7xK?=
 =?us-ascii?Q?NpcSuOMPb3fMsQYn8VD5V9LcfrgDa8DOwAD+Y3BzumjnoudC4SH+tbPKkCVI?=
 =?us-ascii?Q?5+qjHOh5auxD57hO2JRY0sUfhFZxKSINxU0k67i8QWGeOSndR3tolbVXdn6p?=
 =?us-ascii?Q?7xQDF6NgjSQ8JVxiBR97fWakn8sBeOuYOeplUgmz+D7IkZNEggxv0IbiQ3C2?=
 =?us-ascii?Q?fz9+c2r+Okn0BII+XAcubRMOpXwOD/ASzKiVEhOigSqzhrm234q+OvqEz3jZ?=
 =?us-ascii?Q?oqVCzQ854BZlLZAAhqimFPjBQ/aS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MabzzoRNcPOcwVg1VMK4hhlrZw7PYbRHkdLGZ04MZCCjBeYAGG1/gzUnJypy?=
 =?us-ascii?Q?whZMCgLqTtYINeQVX0BqokL8vusnYSBDOQOmBGH/0ynuPI8xfn0xb1veBBTf?=
 =?us-ascii?Q?aQTw1Rl3HAKkOL/yh7bI7CYM917CuSDq1lT4AGkGGSgAtrX8nPnylKbpWT2a?=
 =?us-ascii?Q?+EDCsr8vaDKvI5pYwCWo2TO/Vk3jP7cHWIHmDSYYYiB9oF4LuMmfpkLm6lCj?=
 =?us-ascii?Q?DhWeVs6dz/7wG3zeRZDVk2MwpcN3q0CCx6v9JW5BKqD1MVR3ztbzBuIvx/iq?=
 =?us-ascii?Q?rPr1HrtfTHXh44ejLl468J8Kk8RWmot2zXnIWeMWOnARGm8rw9Tr2YUnT6h6?=
 =?us-ascii?Q?3+vx/vmfdtDvCshcREFYSkdcyXgpxO2fXl4dbT2/rE9SMwlXy2Azsz6Pw7UP?=
 =?us-ascii?Q?Q/c8FlxqdG4mQkszqLS2H7cRcBWhbGS/gNqRHP4RajeGazqEW6cM1cSQYAed?=
 =?us-ascii?Q?sgRmtTbtCrOBc/EkghK1aB7NfzwUizpVK4dzFqeGiN3i7ETWDxOq5m48wEGk?=
 =?us-ascii?Q?/+vIWyZ4jQqaaMRVNydR6oz/Cd2vJgF46lW9WQJ3vvuS/BDKxdS68WCKt4s6?=
 =?us-ascii?Q?6bNugkq7C2PNbmEcbQPyjx4DCImil6GwvnfqKLVgITE1qY1S1UW9we8P+mJu?=
 =?us-ascii?Q?YJCjE0cmdSu2iOZ8PXYWDtyWocCIPCn9KaACFCOAq3ZLOrEt/TA7psquNbHj?=
 =?us-ascii?Q?BSHkC9M3+8t3wQGBFKMau//KKEJkU6Gx3beoIRc4eqb+Kt0dPkOzjY7eyBez?=
 =?us-ascii?Q?3Iayva0vP4B5zF1+k09bGA3idBkNc+ibxMM0++E63oDQmJSCzV3XPc/igRuQ?=
 =?us-ascii?Q?7vRQlzP0LOQskLK03f6S8LuK2g/08eTa4VrGCuXxxhNKgntiq4m6Ma5zXeiO?=
 =?us-ascii?Q?VzwI34ENukWmpJ32DqGZ59wnbbbBCaPTBHLMspv+/qEQrAJmbQb77uVZFKPw?=
 =?us-ascii?Q?kTP0r0VXNVNOkeP/js0B34tKwX9VqbyyuM2cCxrLJW4y7udtyh27yPyZK7y/?=
 =?us-ascii?Q?HS+PQt2Vbo8NcgqYJx9V09TaknD54O4lS6TLy2fGpFnL8jkLLfNrbR+/+/VN?=
 =?us-ascii?Q?kOPaf0juPTJ4Xuc4RX0BADkSopXxLDPiLDSBU4nR+yZDsbCpJMPpqi/dGWJ9?=
 =?us-ascii?Q?pwD5zPTUif8dcS9uBQuW0p9YMV4ANN0st2U/2NW8au2rGMoWyQcUZwRTXGok?=
 =?us-ascii?Q?UrwYmx/UWjLsoSzCpaP3UGLaXl0YWGlYmxaTXwKBr0QU7u4oC20fyPrChky9?=
 =?us-ascii?Q?YGC4K8HRZfZ4z9++nfWpYiGGyIOEObJU8LMrpyci4c7oyNNLlMG63JfRhbQP?=
 =?us-ascii?Q?kLmWn4fVjg9aiL7UUWuuuuAJb7VLa8K8LZFxsuP0IcUYhTT3p8RRZ6J1KKfJ?=
 =?us-ascii?Q?M1/U1gJ5i5xK1EqspSf7+ioVfSP+incn1cdZkEGgGQLchoKqNfxLfLeB0L7W?=
 =?us-ascii?Q?kp5o7n0oOVZHv/xZ9t4w8Yh3oAy2kpZeCyHB3xe0I+Yaw9ALfIT5gh6W3YFe?=
 =?us-ascii?Q?dx4lyj13jxfFWv6Z8kHvepHwV/+WqA/DNtAbC0ukf+bIpKxmg31+FnLP+IwH?=
 =?us-ascii?Q?q2mKC2daGdoGnSvstUN7fBO/iK5PD/wC719YjDcb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6218e1a-7b6a-4ae5-7701-08dd629f3f46
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 02:23:45.6942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fdRLYIkSDt45l+GFWCDf1hqqtDihFtSqls+s+7PrlHPGQAODOevEQnff/ZcX11KwMXz1beKn13WZNcz0nMZzXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6278
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
Reply-To: "20250311100626.533888-1-william.tseng@intel.com"
 <20250311100626.533888-1-william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, March 13, 2025 5:55 PM
> To: Tseng, William <william.tseng@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Tseng, William <william.tseng@intel.com>; Ville Syrjala
> <ville.syrjala@linux.intel.com>; Vandita Kulkarni
> <vandita.kulkarni@intel.com>; Lee, Shawn C <shawn.c.lee@intel.com>;
> Cooper Chiou <cooper.chiou@intel.com>
> Subject: Re: [PATCH v4] drm/i915/dsi: let HW maintain the HS-TRAIL timing
>=20
> On Tue, 11 Mar 2025, William Tseng <william.tseng@intel.com> wrote:
> > This change is to avoid over-specification of the TEOT timing
> > parameter, which is derived from software in current design.
> >
> > Supposed that THS-TRAIL and THS-EXIT have the minimum values, i.e., 60
> > and 100 in ns. If SW is overriding the HW default, the TEOT value
> > becomes 150 ns, approximately calculated by the following formula.
> >
> >   DIV_ROUND_UP(60/50)*50 + DIV_ROUND_UP(100/50))*50/2, where 50
> >   is LP Escape Clock time in ns.
> >
> > The TEOT value 150 ns is larger than the maximum value, around 136 ns
> > if UI is 1.8ns, (105 ns + 12*UI, defined by MIPI DPHY specification).
> >
> > However, the TEOT value will meet the specification if THS-TRAIL is
> > set to the HW default, instead of software overriding.
> >
> > The timing change is made for both data lane and clock lane.
>=20
> What does the VBT contain?
>=20
In VBT, the value of THSTRAIL is set to 60 and TCLKTRAIL is set to 70 for t=
he
device with DSI panel.

> Granted, the spec only describes the relevant fields as "TClkTrail:
> Clock Trail value" and "THSTrail: HS Trail value".
>=20
> But we might have panels and setups where we depend on VBT providing the
> values. So why do we pick and choose some VBT values for overrides and no=
t
> others?
>=20
Maybe timing conformance is the consideration which may be subject to the c=
hange of=20
data rate.  We need to keep it adjustable.

> I also don't get why we do this:
>=20
> 	tclk_trail_ns =3D max(mipi_config->tclk_trail, mipi_config->ths_trail);
>=20
The reason might be linked to the minimum values for both TClkTrail and THS=
Trail,
defined in Table 18, MIPI D-PHY version 2.5.  We need to get a value above =
the required
minimum value for both timing parameters, via the formula.


Regards
William


> and then use that for both. Again, would be interesting to see what VBT h=
as
> for them.
>=20
>=20
> BR,
> Jani.
>=20
>=20
> >
> > v1: initial version.
> > v2: change clock lane dphy timings.
> > v3: remove calculation of trail cnt.
> > v4: rebase.
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13891
> > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > Cc: Lee Shawn C <shawn.c.lee@intel.com>
> > Cc: Cooper Chiou <cooper.chiou@intel.com>
> > Signed-off-by: William Tseng <william.tseng@intel.com>
> > Acked-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c | 19 +++----------------
> >  1 file changed, 3 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 82bf6c654de2..6cf9c9275031 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1846,14 +1846,13 @@ static void icl_dphy_param_init(struct intel_ds=
i
> *intel_dsi)
> >  	struct intel_connector *connector =3D intel_dsi->attached_connector;
> >  	struct mipi_config *mipi_config =3D connector->panel.vbt.dsi.config;
> >  	u32 tlpx_ns;
> > -	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
> > -	u32 ths_prepare_ns, tclk_trail_ns;
> > +	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
> > +	u32 ths_prepare_ns;
> >  	u32 hs_zero_cnt;
> >  	u32 tclk_pre_cnt;
> >
> >  	tlpx_ns =3D intel_dsi_tlpx_ns(intel_dsi);
> >
> > -	tclk_trail_ns =3D max(mipi_config->tclk_trail, mipi_config->ths_trail=
);
> >  	ths_prepare_ns =3D max(mipi_config->ths_prepare,
> >  			     mipi_config->tclk_prepare);
> >
> > @@ -1880,14 +1879,6 @@ static void icl_dphy_param_init(struct intel_dsi
> *intel_dsi)
> >  		clk_zero_cnt =3D ICL_CLK_ZERO_CNT_MAX;
> >  	}
> >
> > -	/* trail cnt in escape clocks*/
> > -	trail_cnt =3D DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
> > -	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
> > -		drm_dbg_kms(display->drm, "trail_cnt out of range (%d)\n",
> > -			    trail_cnt);
> > -		trail_cnt =3D ICL_TRAIL_CNT_MAX;
> > -	}
> > -
> >  	/* tclk pre count in escape clocks */
> >  	tclk_pre_cnt =3D DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
> >  	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) { @@ -1920,17 +1911,13
> @@
> > static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
> >  			       CLK_ZERO_OVERRIDE |
> >  			       CLK_ZERO(clk_zero_cnt) |
> >  			       CLK_PRE_OVERRIDE |
> > -			       CLK_PRE(tclk_pre_cnt) |
> > -			       CLK_TRAIL_OVERRIDE |
> > -			       CLK_TRAIL(trail_cnt));
> > +			       CLK_PRE(tclk_pre_cnt));
> >
> >  	/* data lanes dphy timings */
> >  	intel_dsi->dphy_data_lane_reg =3D (HS_PREPARE_OVERRIDE |
> >  					 HS_PREPARE(prepare_cnt) |
> >  					 HS_ZERO_OVERRIDE |
> >  					 HS_ZERO(hs_zero_cnt) |
> > -					 HS_TRAIL_OVERRIDE |
> > -					 HS_TRAIL(trail_cnt) |
> >  					 HS_EXIT_OVERRIDE |
> >  					 HS_EXIT(exit_zero_cnt));
>=20
> --
> Jani Nikula, Intel
