Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D12950F3B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 23:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46DAB10E3D3;
	Tue, 13 Aug 2024 21:43:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kDj6b7VE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A052610E3E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 21:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723585418; x=1755121418;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BdZtQYkqGGuWrJqbzZBpsGjE9g37MV1YlrUAde9QlBA=;
 b=kDj6b7VEWc42tWj3AHhRvBr25b/f0jlCbwUuXM6afD2A/gwnEZI5SFmc
 DvOCTmYqINWx8InUwOCvoDaN8sCxhawMF0SzNMJwSHGlz2IT32lux58Wr
 DAbhlyR1OG8cXddU1b4nTtvdpCFeuI1ztmtJjTVsbpD2Wmkyc5IOO1NoL
 A4UGJglC8lBgvjOVqKLp2DNd+WtF/ifB4t3bim7fmaYs8nGuLKtbC6qh9
 JhxqXlTKa/eRVGymoh0gLqKXtl34GDj2pINNkVMS17edQeok4+ZftQaBR
 LYx8ZpmEI7lKStIB7wLTKtA84bX7cUcoHzRaqZ8mTfIUJXkWA66voQ+QP w==;
X-CSE-ConnectionGUID: /kY6406uR4OBWs+R19gRZA==
X-CSE-MsgGUID: gk/HYktVR36ZfjYk+j1Wtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21637854"
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="21637854"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 14:43:37 -0700
X-CSE-ConnectionGUID: 0ddwYKzXQZ67HPzieSv+oQ==
X-CSE-MsgGUID: et6A5BzISQioXU5xVFigOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="89484479"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Aug 2024 14:43:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 13 Aug 2024 14:43:36 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 13 Aug 2024 14:43:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 13 Aug 2024 14:43:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 13 Aug 2024 14:43:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xCfzA6jw33htJRfc4JaqgcMhRF1OEywHnLiXtyxifadBcwmkfrABphD4gJQis9TYmWheyXbnE8qJ2XK11qt2WiP/2K4YorSzL1TzHLtimjCsQJ/1qtAW/eDQ/j6vSQwBKulXc0oDWgYBqalsy/i31poNfwbgBcVbxZ1fMn2NK/damuh0K+T8bjEjKlstiskp34HSroyFMS+1D9NaMYk0L0aCw6UawJNn1aNBntbcqZlivA3GV1WKrnWlX0t1c0RkeBwqyRBbkpBvG5f4lhr7NUWqxsDDiwkBUKAVM5O3lry7kspkPUbB1QCcyHVOZSADoNTccDkR4iUtGXVoemoYVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UD9VuEyzN/UKqYByrIE4rELpA6F9Vn2tCJzJakY207I=;
 b=uq1uh7y8CKYyCRTFE1ou/YeXhZyMxGtaaNK+RKVfxmE6f7bxnJOdJQNlohYPoXiE962r2Air+GufYI8ZMGhCYAUXOOkOTXtN5OnSRe8Xm9XXhBp++J7WzxStJ2XnueFPC+qgzfHEH7C82aMlFdEgbdkNTBFYme4KGWtJ8abH8KsWZo4ld85kmGt9Xl9wHhT7TiPgLTzI7HDcC1N0Nj4qSQMbsmjTfYJOmVBvqJz68QelPA/o361Ly4cb5N3lJNyk5uvQR/5/Rhl73b+cRA39bUcEwxET81mMbLZo2iAr+K842/L1vxBLw7eEblA5JpcojNZkGeuq6xlhqobffzprNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by MW5PR11MB5786.namprd11.prod.outlook.com (2603:10b6:303:191::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Tue, 13 Aug
 2024 21:43:30 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7828.031; Tue, 13 Aug 2024
 21:43:30 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gt: remove stray declaration of
 intel_gt_release_all()
Thread-Topic: [PATCH] drm/i915/gt: remove stray declaration of
 intel_gt_release_all()
Thread-Index: AQHa7Yolg4br/mQI8kqAVyJWIsGC0rIlt5ow
Date: Tue, 13 Aug 2024 21:43:30 +0000
Message-ID: <CH0PR11MB54447CA6426EE7E1B29F260BE5862@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240813140618.387553-1-luciano.coelho@intel.com>
In-Reply-To: <20240813140618.387553-1-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|MW5PR11MB5786:EE_
x-ms-office365-filtering-correlation-id: 42b59afa-029e-4048-65de-08dcbbe0f938
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jIEOq0HFH03mkq/Lusd73xhuRXwzSN+W/8aG6QdBOp3CHJU5YpBf8tyuggH0?=
 =?us-ascii?Q?qptFV+QhOLveuuVnAvzAyxpoKgYnJnWf+bU4mjMGP2jBw9kUs2DIfToQABCt?=
 =?us-ascii?Q?011E07/14giXRb4ag789YXG2rRhgr1yOU7L21XU9YYisBsLTvMfYYCjBx8ca?=
 =?us-ascii?Q?jLD0YUHof520aP6V2DPdrXs0sFaSgtvEp3IEvn16cmBf3H4tVnOEEj39Z29h?=
 =?us-ascii?Q?fq4qjwXw3ZsAVn67HfkSbNZ/sF7Qtn3fdav2CHfTzca4Lnm/HQ+VJmtoFuNe?=
 =?us-ascii?Q?YCYxOyAx+aIUTnlmDGVoDBIHX7w57FC89PqmHza4ccOa1X3/EtFANJNia/8m?=
 =?us-ascii?Q?Ft7vjagR89H2e/yWgRZPh+s7K1FG8GUWI/kXSRKI6aUdryEf2htTUDmigTYA?=
 =?us-ascii?Q?LbDXdTSaHauKeBerbZERhlxI/w3ZLv/j82RGsAmuYDH/cgIMW7/jyRP9SwAw?=
 =?us-ascii?Q?s3tuUKj9TXo90jiSpctc3gLZugRR1jmbxa8CioT04R8fAvTCOSXDPbYrddPN?=
 =?us-ascii?Q?Crxe8ueqzJoMRzNqepA0tnmqxh1CbF6C1hZ7yy6lOcPGzUlhvLXl5PRoWsr1?=
 =?us-ascii?Q?RZbMnZUWz9isV4DLCEKKHaYLuQJ0rgm69Stbz7+Vbf5bbynxEQJw9HSlTG5o?=
 =?us-ascii?Q?EFzu8tGy7RfFgX8sTWpjgbg8XmePWoT1xDkdDw2z1wGmApsE1Zidku01w+CK?=
 =?us-ascii?Q?f1MZ/5uIJ1W08RGvt+i9PwB7AB4L+u1J0ipmd46U/9WfjzwVcpjHNBP+iZFV?=
 =?us-ascii?Q?YwkbfAlNoy2Q8ZK3vT0QVGTgUnaNSd8szpc09+nRb3Kh6SOOdgRdit1xdy/Y?=
 =?us-ascii?Q?T/3PeV459EAXteHAIZTP8A85g/xYzPuEXGCy9d4IoxCYAz0RdxNmPu0gCcCx?=
 =?us-ascii?Q?zG8vC+RSCgxTyehxGsesnRYIw8iztXzES5XqmZ8kTkMwVFH0NYBW3BFrAVl2?=
 =?us-ascii?Q?dcN2bmifY2WFyKjFtTKL4cqkMDhRxbMe0vyuixhuernhgDEvu8IJoHYjUUYb?=
 =?us-ascii?Q?kyP2QXDnTUP0c8g2D9Wm94zk/2wuCSDsx2utJPKY29iWWed5ZMuDLwUQG54p?=
 =?us-ascii?Q?hpy8BsGcho9bcZ823ls581aLwkuallOTA6ofCoaML5GJhY0MMuXMH1UI+8Bq?=
 =?us-ascii?Q?ltHt390Hx8by+5UNOBrwxWewS/CXs3Yr9W6ukD7zyH3VIeHvVhfvfMV2r0AB?=
 =?us-ascii?Q?0Ft2lkK0Dt7A6wWni/BWtvJaZSir/CgguFvQ2/swEUD8uKsYaPphPLb4n7qe?=
 =?us-ascii?Q?97k8qKayvK6Zgn2PcLNYcXm1lQQlj0TB2e4Y2tvjSAwMYJPfUdOFdmZorlgl?=
 =?us-ascii?Q?h4tZc0u+c23kCvQ8oBs2ATWWYY4PLuW4+1TstHQmLUr20dKX3oQvXWHkkrPb?=
 =?us-ascii?Q?0aknczxNPzZALIN4sBsCXVpmxmNxz0a9aRckL1O7FZVcE6vjiA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lGYeql3YbzjzEF41OA1XHrbGo7Xhz6eZ4wCn8xTbOdymtXZkA53XS1oFUeqA?=
 =?us-ascii?Q?JttEP04PoDooApoi/bzzk2cLqfzePxVAFLAYg6Ifou2Kl2bfVGJLLVzSL6Qw?=
 =?us-ascii?Q?b+hAtBbOJDuU9ys689VXR9U2peIoPaa8sagKVpIRDoRRRI19i1Qm2JiVO7l0?=
 =?us-ascii?Q?x4oICjZf8150U4oP4kpyOYaW8E6Jty0zbzYw9Xo/0K3SqW/PrX7pk2/C9YQX?=
 =?us-ascii?Q?OzuiHR410MWlWyxkuXKZsLfXcDYqO5TvZ5/p6Gf3RcOWw3wi/GTAa6IBCGZK?=
 =?us-ascii?Q?Imk8piIE6l9/IDB+gY6P4pYqsXmTmFqrf0M/HOdjG1V/qMjlzsKGSKXVF4tg?=
 =?us-ascii?Q?8XqDRyy6k07xzjbqzpcGbxII/D29FkpLshTgJBy8PfvOEli/aBUcZ08Ams0b?=
 =?us-ascii?Q?4XZh+FhTzBsBLbevaMIIAolq5Jz5gEswYvlzl157XqK3Xk+KhIIDK7w0ZuLL?=
 =?us-ascii?Q?gmitkqItnT7c1JBUH/0DGHjY6WRLrYB7hkEvqMTESi1naPIQUgFnhoY2fCM1?=
 =?us-ascii?Q?DgEZITrMnz7yzT641AoGOiQssUh2i6EeUElfTA6WcjAHqoPZMklsOAT9ocwx?=
 =?us-ascii?Q?zRoexaNNetjgBr30b73F+VcaEs9zaixzP1OgxD3WvL+2ysY55ApeDIi5RPL2?=
 =?us-ascii?Q?t72ga9I4my2DghRAIzRDjX+o0iX30l/SVJ5Si9IzD9PIxwp0RVW0wcUdWx+N?=
 =?us-ascii?Q?oJpPkou9ziku0Px8Ry8ROLpfYgp1dbSwi+o1a6kaKPLwAuvUEs3ge1aHJl0j?=
 =?us-ascii?Q?k9unl0stgFy0ioQtIBdnpeZo24XLPp0gWrs5X/npcXjiPM8N25WSvjS7s5KY?=
 =?us-ascii?Q?ySF3Z9o4LbMu8ORmBhg+vS2rFGboKCffvcEPZSCW27gXKZdB/iT9SE/qAO0f?=
 =?us-ascii?Q?biin/wfrLcvfw+YSId70Mb6opcdRwp1htU3+4qSl7lKoDSimZHO0cSRuaVD3?=
 =?us-ascii?Q?M/6eSrj2PgIDpVJRxtyG3VxTWicASfKaQwmnvn4StpQ763e8QTCc5xWHAweK?=
 =?us-ascii?Q?IVBQp1bvsV4QA4NIFZ9JHVYrANYe9HhKePDKQZh25beQZdVv9aw9dhFmvJpm?=
 =?us-ascii?Q?Lv4ntmEQIgtGzl4sTyQeqiCimGDXVjse0RvU+lg6/Hg41w/zWuPx03bU7ogC?=
 =?us-ascii?Q?SIIVIIUygxFVh+ytgifVfsGdNX9jKSffgkdCkGPiZYqvZOOO10TTsoQFds+x?=
 =?us-ascii?Q?JqwZUGNtVXl82LU6oXIgauCb8ksUM6urTAfOfiMzTu8q71//S3AiGl196T60?=
 =?us-ascii?Q?p0fX8I72Uhi8gCkj7e4ciQ373+hIOt2NofaVFpbb5PHFF4SSF/yilPH43pdg?=
 =?us-ascii?Q?fZc//tjU9/uMlNYSjMy8RxfXj5Yz6dD0h4dbTOwOhIZX+t/eDDWd7ai+lB2V?=
 =?us-ascii?Q?KLOd6ZvPzPsXfeNB25AipQGh4vqFfpaosFPJiJmKqmmjHlIFiTCB01u86R0Z?=
 =?us-ascii?Q?T8BdWo5g5La2bOWaovXwS6OBP0OlK9cMheH/AweGXoERDH6ZwZnfEdy+7Hmg?=
 =?us-ascii?Q?kkZYigeMibCriLB5jYtrP4YRdr90ctc2Ok/Yo4dUa6j9RAEgTxmS+KvIJ8zK?=
 =?us-ascii?Q?ZC9iPCoh4lIJ4pG42gWgVVArHlGgLUPbPQRAQdP6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42b59afa-029e-4048-65de-08dcbbe0f938
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2024 21:43:30.7617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hATHl3i5waDV08WHGy7Q63s2bLT+f1ZnmcHfrCxJ2LzF7raZy5oGMf+xOCkOWZC+kUISGoA5j3mRr54J1Wy9nPzUJ56ZfiRNEsToIaDDgZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5786
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Luca=
 Coelho
Sent: Tuesday, August 13, 2024 7:06 AM
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/gt: remove stray declaration of intel_gt_release_=
all()
>=20
> When intel_gt_release_all() was removed from the code in commit
> e89950553385 ("drm/i915: do not clean GT table on error path"), its
> declaration in the header file remained.  Remove it.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

Verified: intel_gt_release_all is no longer in use.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>=20
> I deliberately have not included a Fixes tag here because this is a
> minor clean up and it doesn't make sense to get it into stable
> kernels.
>=20
>=20
> drivers/gpu/drm/i915/gt/intel_gt.h | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt=
/intel_gt.h
> index b73555889d50..998ca029b73a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -174,7 +174,6 @@ static inline bool intel_gt_is_wedged(const struct in=
tel_gt *gt)
> =20
>  int intel_gt_probe_all(struct drm_i915_private *i915);
>  int intel_gt_tiles_init(struct drm_i915_private *i915);
> -void intel_gt_release_all(struct drm_i915_private *i915);
> =20
>  #define for_each_gt(gt__, i915__, id__) \
>  	for ((id__) =3D 0; \
> --=20
> 2.39.2
>=20
>=20
