Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0359C9B601A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 11:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816C310E779;
	Wed, 30 Oct 2024 10:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFFkVK8w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC75110E777;
 Wed, 30 Oct 2024 10:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730284143; x=1761820143;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=01o1VCKGdyeueovPwKRPbfklpP4flb+9Y/NPx/iy2Xk=;
 b=VFFkVK8wmgHEQ0OWVOVNGfQLP5iq79i68J3+lTs4uLiYeG41+D6wEiaT
 u1a7hHcBHfCt8p8XlgrzXXGFAGqo/WdjNagYKbDnKT8u/gWnJKm0psKG0
 prmHw+we4jat2df4cdF7O+pRvaLxJMtl4UXtm3Zccau4oTlS0TTNJEC7Y
 KdGLaFiJVzMdtNC5kPXJh7Nv3RdnRJOLJLhgqt9i1uZDeKYivRcxNoje9
 GV7WoL6jSnz+pDtz1CW83ShqeZNreTn8ntkAgjP9EvCXFPP/04tUmF2GY
 FoSMj0JKtiIFxHZ2OzKCptQ/Tw8iOBj3YuhWNaAq2tcpJ7YMqqssRYiFS Q==;
X-CSE-ConnectionGUID: rkZ6NSPXS2a1W0/yJ/xN/A==
X-CSE-MsgGUID: DLMkUnx3Ski4JFczzgUb3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41342908"
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="41342908"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 03:29:02 -0700
X-CSE-ConnectionGUID: znNHSW3vQSOOk3orENF8TA==
X-CSE-MsgGUID: 9vcaCw1wSeeg8DCiNRfFig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87050663"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2024 03:29:02 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 30 Oct 2024 03:29:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 30 Oct 2024 03:29:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 30 Oct 2024 03:29:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UsCLLTaM/I//BppcDYA1vcFRYHu4tUr+HsIZ/rTPMo+PZ0W2vHytdaUaogH2yYobp082PIgc6vPn6zu8bWeaJnFBh5AM6sU6wJ+E193edbMlza+Kc1WW5IoLE8NVHM9G5U/OraFxie8/TufsEvS5+4zmqauFVry8N2dtfIcMlbvR5kgIf/w/wA+TyXAiKlzY3Tnm05JiYYa/SpuEkYJ8gSa6YvJKeABTJBfSoi5Rt33W7UhvHSAWL7G3HMA+1v6bPLYSSZ7najUheHyrmz14zN4qJIxA1FvoDRO0v66mgfkdKw6mhbUxSuhWNuJ3zgizeYkSAlPER45qC9ihFo3FCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wta56/XwtUCTfcHfZXoZr2nIrXlf83VAcuW6EQGALv4=;
 b=w+ktfAaXUu947iqDdu6UOjPO6TcbayRbpQQDPsEI4WzBSts+gFV8KX4cmwQ2dSvsrNBlaskvWgLPD8uj3K9Jaa4OeRk0v4kCPgUgOGIb/AewmqqxYPfCgnjx5HE46a+zXOPCE55U2zLcauHh+Otaf1XMgBaTGf5zwKpTrKqH2re6oW3/DlsLRINmE+oZtp+WZExu6TkBifli+vhXWlJlNbrSqx1SpLw1MmqaZOoE/dObLFY6IGKx5BqUtZ9nEUSAM5R4IlJyiqiHEY07IcLZ5oDeHOGFWBa2cvmMNhEdeFS1EitALQs1ljE+2rkB4QMlIgCLGcB0RvUD8/DTkmacUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB6791.namprd11.prod.outlook.com (2603:10b6:a03:484::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Wed, 30 Oct
 2024 10:28:59 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 10:28:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
Thread-Topic: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
Thread-Index: AQHbKnbp80X3AuUZU0a3ZD4kFSFZaLKeuVQAgABcyQCAAAHX0A==
Date: Wed, 30 Oct 2024 10:28:58 +0000
Message-ID: <SN7PR11MB6750990FAA36DA39A695045CE3542@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241030025304.317977-1-suraj.kandpal@intel.com>
 <SJ1PR11MB61299120730252D07F24B054B9542@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <87zfmlnb5x.fsf@intel.com>
In-Reply-To: <87zfmlnb5x.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB6791:EE_
x-ms-office365-filtering-correlation-id: 482cdf9f-1aee-4467-db76-08dcf8cdaa58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?x/j0XevJJcpPuleYGdaXM3Z6turVvARmc50LwBOct1yXR22DRyoRUv/TBD+b?=
 =?us-ascii?Q?kB86RQIPu2I1FsstCGoGu2OOeF7hJWntZNvEtDGZGFkC3ocgP3AcgkP/WyMS?=
 =?us-ascii?Q?4Hu+6+UHrtUfzyFonV8Lm1PdNr/EgWZ1K0pdyTxnySlHEoDB+QXEGYEGbcKQ?=
 =?us-ascii?Q?wJHFSQhu2d0TK3sF2ZvwgG7JhB5FXiIDyKUMzV5dBllC3J2SOnSR5wvkhe8M?=
 =?us-ascii?Q?qE9YUlyNPyq1lJpVzmQ3Gld0YTu2ZeiMot27EIqEiEVWd7EkLUaMXps31ZOz?=
 =?us-ascii?Q?OJ4veILWvfvBKJZ8FsR7ewr/g4s3R5S44TmiCFi43XqENWx1icHZQ0bzcxH5?=
 =?us-ascii?Q?EX3SCAMJa1kgBfeW+Ip+zqTtMMltD8g+g19kfqjJEr+b6SQQ3JR+5QwPOB6h?=
 =?us-ascii?Q?+fPUo5jYHBn+QHcwUWIILmClP8ExPN69wQP22w1fhvZSjKu3Fmmz1gX4K/Ln?=
 =?us-ascii?Q?kaupEK0okNByJFsXjhkiKP1oY3mRNJBd1qQ5bv8z7CdoMePdH+z41rurXX0A?=
 =?us-ascii?Q?99tS9T8Kxdo1El8+OPq8xcLmRpiiWkbKNWDtStC2UOu7qtOB97BbS/pqZGV9?=
 =?us-ascii?Q?PZAZPBdGk6ho17JF6ZKOxvoof6KavNlwgsmemOMuLzZ/297Hshq2Ay4PMAY+?=
 =?us-ascii?Q?kusdcQ4pU3iH+MlI+bZgkaMwWlp5JbxDr1+1qNRUjAlsBr0/PgUdECgbu/7W?=
 =?us-ascii?Q?nEhWquN91qXJcgoRzzG1rUEIVbVa6ovuKBwRy6T5A+6Ln33Xf9T6G4DAEwii?=
 =?us-ascii?Q?6pnO/4roAFMr0Mizpgr1noy7T6f40JDcxdKTExLNP1OWrwVUezWUmA7YvzXW?=
 =?us-ascii?Q?g8F80z29IsLKuKzATSxFeCnfPBOCMLeD+ys8PTDlhBKseMJYVNvCeuarG2FI?=
 =?us-ascii?Q?RusCSW5oiEJUT3Rmjp9HAXftIX8okGAExq2Kp229w8qGONtsyFs9qCX126Pq?=
 =?us-ascii?Q?kkhvO6k2cezt0F4qCszYQlhaZq+uz5VyNYYL9OKxKiAZduvZkr646qfcbIsl?=
 =?us-ascii?Q?kiICb6/NUc01lkTwiqfvc4IflcD5hZSWI6unKl/j8IRF6Ie28pDUvPIdGyJZ?=
 =?us-ascii?Q?AbYgJG8c2KD5BiwdmggEprj7PeSFMbB1HIh7ezqxh34/DD16KH01kgimsm+5?=
 =?us-ascii?Q?XLhKPFOti44Yt4FLcD6kMgGtc0QWgx8vQz/NBv57Nuq6MpYzw3/P2RF00vFI?=
 =?us-ascii?Q?S+iAdyb6hSH0XpoueNNBWo27V1hjQnswaCrzbF8dqjFsGczDijsFi9cYlIAF?=
 =?us-ascii?Q?TNUCqNo37r4RIZfWtzXlqawjbwkRhJmUor5JhNmiqRW2NweGinrA/n5XjIyp?=
 =?us-ascii?Q?QkhZNA01hlChVV4yu9WNn4MPcSkiBP+dkgV2SipDk6gYQgB53levaXEEc3i6?=
 =?us-ascii?Q?7Ltu3j8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zvJhLXR3d2W1OTI6JiAcHCWKoAkkHPNAxKHa0bYJVurnzzgJianH/xHeF8k6?=
 =?us-ascii?Q?WGM+AKmpzEQEMMn9ERSU1z6nfb9+HoFSY35zgF6EdKh9h+/mofzg2Fm+pylF?=
 =?us-ascii?Q?ZmXWI7CG+EcFUBXorFcytl9u6rfPz6mgSNBf+kwJzsBVg1REwzinFs60Q+Vv?=
 =?us-ascii?Q?f+YXI3KStTu/UuPH1twqUeTCCne3RyHdPue36+YtqalUCcmtkDupQ/2oNKah?=
 =?us-ascii?Q?vY/o1NH6z73vp1ZSIApx5a1NWVzM74YKspjG4l1qUzh6tB8u+QUpPdUX4qew?=
 =?us-ascii?Q?Wmj+rpzMVju+1WXxIkKo3+x0fJsU4yZPGA6eifBUwPl/Tq1Mn40husRCAzVv?=
 =?us-ascii?Q?vBBL5iHWipqJGM8Wxpi1syBOK6ogg5jFzDGhT2zEq7LUtZvpqp1qJeikPIs1?=
 =?us-ascii?Q?5FjRKISDArJg3XWaHrBd2iOUcrHM8UUt8oZC+kXUc4cAfgypfHLkOnrEZ5Y3?=
 =?us-ascii?Q?QO8CrSSSIpbnb5Ue3OeHCUGbE4B2/MKffjEeY/+O40RlkX0wQEZXJTlibF+m?=
 =?us-ascii?Q?VQxbTW5KPVyyLOSAVHSXa1ee9VSbdaLwaHUcE90W13ziJPmhTykTgv4ftcoD?=
 =?us-ascii?Q?ABQRm9vMRCcM2R7e4zAbMzQx0ZlOc78i5hcRHd2rEm+MjbH7E5LOTUGgNjVo?=
 =?us-ascii?Q?GFI/cMAkd9BXcxsKBsBq0Qhax3oGPLSS1VyNu4zOxfpS0sU7eTT9J3+VuYzM?=
 =?us-ascii?Q?mr6osnXtFd2538IXpfG0sJ07LMryLsTtboHfI5VcPuPa+Dt5d1E/5xYMUD7s?=
 =?us-ascii?Q?GtV5HiMs5BxuoC8tSVF+naGocFqYhd3Nm8PkOUPBoE4xBeVERj2N5cwNYoli?=
 =?us-ascii?Q?GxaGG8ZS1YLfEQ9dCIplzPKmgIOiY41C7Iv3L9b3AmKHfrH6li84EOtxQd0v?=
 =?us-ascii?Q?aDN2kWxDjCSopVYH8SFggkXNrN3eAkKmam8TDWBH7J3XIeghejEs22aikRbr?=
 =?us-ascii?Q?wF9CA5vY3n3nK2uVoqOJev8sCVTFAIxAe/n6CXWvD45LL9raRpvNXze7zGc6?=
 =?us-ascii?Q?/BmzrcW06OZBdKZw7SGiuR5qYoS/lYEz9STjTF702jlIfu6kzk0KZ1h5396S?=
 =?us-ascii?Q?jDMlTOwduOFm4BSnMxCUTv50xOYWEW0noupUbO3dCj/f+Q12u/im1P+ezp4c?=
 =?us-ascii?Q?fI33Vky/BRjE1gEoS3XZ3SLKZ4qTlh58nD50oahK3QGVXcbKJXnkTohkDeQt?=
 =?us-ascii?Q?mwnZHWficJtGCi/ufwDiN2fAgbAYBwKIwBz0YwWI4oRK92L9jAJXLm55spez?=
 =?us-ascii?Q?ftxI41tjtLIU4qcHgekRWiogdzgnWyCgZ6i1luF/I+1I+1zaOChHLuv9cg2l?=
 =?us-ascii?Q?XlkkAybqQvxjXKsfD5GAzmahaw+W2E7oN/wbdxNMrNbAvamT1F5ydkwYrDDG?=
 =?us-ascii?Q?33S1h7GcAaE4Xh3qkd1Q0v7+aTCiFCK3y5wzcvr9WOEAJjAeiDUQ4SPUwNE5?=
 =?us-ascii?Q?12HRvrVoAmBcd4ZQOov3fr011uaxtKegF/oWzyi3pSCn5UUGbcw7Z/sJE9DX?=
 =?us-ascii?Q?/0//zT0dTEz0z4Fa9ZvSeRc/aIy0NLwKKC9w/O0VhcTiwZQ7gK7b/a1nS6CS?=
 =?us-ascii?Q?yGkRSqvWxPjSeY8HZE0xuTLRhDbrdgWK9vpd0ZVe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 482cdf9f-1aee-4467-db76-08dcf8cdaa58
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2024 10:28:58.9392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gSpzs0yrt50NoYtwVEeyG8x7zpJlx5acEbuLJdNfGnaz1ID+dhctidz4qsYxpE3z1Dk7xBHlp02xgRW99H+LVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6791
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, October 30, 2024 3:52 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.org; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
>=20
> On Wed, 30 Oct 2024, "Borah, Chaitanya Kumar"
> <chaitanya.kumar.borah@intel.com> wrote:
> >> -----Original Message-----
> >> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> >> Sent: Wednesday, October 30, 2024 8:23 AM
> >> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> >> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Borah, Chaitanya Kumar
> >> <chaitanya.kumar.borah@intel.com>
> >> Subject: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
> >>
> >> Add the loop on the first read/write we do to give docks and dp
> >> encoders some extra time to get their HDCP DPCD registers ready only
> >> for DP/DPMST encoders as this issue is only observed here no need to
> >> burden other encoders with extra retries as this causes the HDMI
> >> connector to have some other timing issue and fails HDCP authenticatio=
n.
> >>
> >> --v2
> >> -Add intent of patch [Chaitanya]
> >> -Add reasoning for loop [Jani]
> >> -Make sure we forfiet the 50ms wait for non DP/DPMST encoders.
> >>
> >> Fixes: 9d5a05f86d2f ("drm/i915/hdcp: Retry first read and writes to
> >> downstream")
> >> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> Reviewed-by: Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_hdcp.c | 36
> >> +++++++++++++++--------
> >>  1 file changed, 23 insertions(+), 13 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> index ed6aa87403e2..c8ba69c51cce 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> @@ -1503,6 +1503,8 @@ static int hdcp2_deauthenticate_port(struct
> >> intel_connector *connector)  static int
> >> hdcp2_authentication_key_exchange(struct intel_connector *connector)  =
{
> >>  	struct intel_display *display =3D to_intel_display(connector);
> >> +	struct intel_digital_port *dig_port =3D
> >> +		intel_attached_dig_port(connector);
> >>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
> >>  	union {
> >>  		struct hdcp2_ake_init ake_init;
> >> @@ -1513,31 +1515,39 @@ static int
> >> hdcp2_authentication_key_exchange(struct intel_connector *connector)
> >>  	} msgs;
> >>  	const struct intel_hdcp_shim *shim =3D hdcp->shim;
> >>  	size_t size;
> >> -	int ret, i;
> >> +	bool is_dp_encoder;
> >> +	int ret, i, max_retries;
> >>
> >>  	/* Init for seq_num */
> >>  	hdcp->seq_num_v =3D 0;
> >>  	hdcp->seq_num_m =3D 0;
> >>
> >> +	is_dp_encoder =3D	intel_encoder_is_dp(&dig_port->base) ||
> >> +		intel_encoder_is_mst(&dig_port->base);
> >> +	if (is_dp_encoder)
> >> +		max_retries =3D 10;
> >> +	else
> >> +		max_retries =3D 1;
> >> +
> >>  	ret =3D hdcp2_prepare_ake_init(connector, &msgs.ake_init);
> >>  	if (ret < 0)
> >>  		return ret;
> >>
> >>  	/*
> >>  	 * Retry the first read and write to downstream at least 10 times
> >> -	 * with a 50ms delay if not hdcp2 capable(dock decides to stop
> >> advertising
> >> -	 * hdcp2 capability for some reason). The reason being that
> >> -	 * during suspend resume dock usually keeps the HDCP2 registers
> >> inaccesible
> >> -	 * causing AUX error. This wouldn't be a big problem if the userspac=
e
> >> -	 * just kept retrying with some delay while it continues to play low
> >> -	 * value content but most userpace applications end up throwing an
> >> error
> >> -	 * when it receives one from KMD. This makes sure we give the dock
> >> -	 * and the sink devices to complete its power cycle and then try HDC=
P
> >> -	 * authentication. The values of 10 and delay of 50ms was decided
> >> based
> >> -	 * on multiple trial and errors.
> >> +	 * with a 50ms delay if not hdcp2 capable for DP/DPMST encoders
> >> +	 * (dock decides to stop advertising hdcp2 capability for some
> >> reason).
> >> +	 * The reason being that during suspend resume dock usually keeps
> >> the
> >> +	 * HDCP2 registers inaccesible causing AUX error. This wouldn't be a
> >> +	 * big problem if the userspace just kept retrying with some delay
> >> while
> >> +	 * it continues to play low value content but most userpace
> >> applications
> >> +	 * end up throwing an error when it receives one from KMD. This
> >> makes
> >> +	 * sure we give the dock and the sink devices to complete its power
> >> cycle
> >> +	 * and then try HDCP authentication. The values of 10 and delay of
> >> 50ms
> >> +	 * was decided based on multiple trial and errors.
> >>  	 */
> >> -	for (i =3D 0; i < 10; i++) {
> >> -		if (!intel_hdcp2_get_capability(connector)) {
> >> +	for (i =3D 0; i < max_retries; i++) {
> >> +		if (!intel_hdcp2_get_capability(connector) &&
> >> is_dp_encoder) {
> >
> > Now I am a bit confused, if you are using this Boolean here. Do you
> > still need different values for max_retries?
>=20
> Even more confusing, if you get false for hdcp2 cap with HDMI, you'll con=
tinue
> with this stuff anyway?! What's the point in that?
>=20
> BR,
> Jani.

You are right this check shouldn't have been added does not make any sense =
here


Regards,
Suraj Kandpal

>=20
> >
> > Regards
> >
> > Chaitanya
> >
> >>  			msleep(50);
> >>  			continue;
> >>  		}
> >> --
> >> 2.34.1
> >
>=20
> --
> Jani Nikula, Intel
