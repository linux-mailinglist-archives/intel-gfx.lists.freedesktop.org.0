Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLX5Cm9+lmlRgQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:07:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9989515BD30
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 227D110E663;
	Thu, 19 Feb 2026 03:07:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kOXT6dqQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6FD10E660;
 Thu, 19 Feb 2026 03:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771470443; x=1803006443;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TDHb2T4FJflRQtMBmC35c09MA1bPZ6vVQNwo0QKLe4o=;
 b=kOXT6dqQRsR3DwcIGZwAjGi6boCcnkNsvyvru/YynNvojv/TY9SvnL3y
 NL84iFGHQwjTyoJrWVp9zqjvBp7ZEBsD0+eZfTqQZBgr7XkUWz+gdKkyk
 cf2gBgWlvNkMRjLTD2BJoC3m1LYPFLkM3XIiR8TdmDtqjie3GM2Qhr6NI
 1vUMCUMhu7TPNchUhmsr8DtIQeGR058Cht9jvBricFaqtA5sUjwnZOePx
 IIEd1OG08mfiB1znoUg/VB457FsrjBFnec7gXcRAx7aKpAaZV6/Jdjsxs
 lw5YpBN5cNYvo+Og/WiAYGAiiKY/2H1g7vBFvwUBiWKMfw7cnBngMUuA0 g==;
X-CSE-ConnectionGUID: FpJFkAq9QCOg4ZGs+E1FTQ==
X-CSE-MsgGUID: 6CeO7buQR+6zMERhZAIuUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72544857"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="72544857"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:07:23 -0800
X-CSE-ConnectionGUID: 4QjZxfaYSd6c3h738NGKrg==
X-CSE-MsgGUID: uQSgU/UsTLOalF8RvAEmQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="252084327"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:07:23 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:07:22 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 19:07:22 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:07:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WAwWj/HVeCv+bDeErV/EUXphX4N4Ls8IOq7I2T1WHk5l/IGCWFOKN1WnJ8XtgQFxnlEtUj6J1akVM2Iil8w0frOAQprDVKFI2nC6R97quq/BODpNj/NAp4hNO5FdIss5F3m7ptjBwOri633QEchbJY/kxgxRyOEmcdAjqQRfNjtFfqyI2AMkxhP0NX8br7zIvn4R8TAdFs8h6VmDP8tJ/0Ig3QbvYCE3g1bvePG/Qgh1GIcVR5rOFQ3ojato6ylAL7ci9/ydgiQUL3fhccyp15gfLSzUqw3BF0bM7QrDBonfnWIPL3d70wM3cS6XWDSJqoBKBSo5H7UhIaNdPE0Bkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iAclIx82n0vkQTTcFEl2htt53B6ja5QvJGnTOfx/D/Y=;
 b=pVVukAyxhqRQXbcFZJE/EKMy4sc3xYl0l4gvOOp6VwJbyAovJ3soGZ78EZLYw1iQreCwc4YQVLyWbtc1Q85R3+WW5UKIGWYAaPB2cvxbkz3yWbe/TtT7YN79N4jq+SSJeyNhfx8Skk+jcIqLmNgBa0KEF/RnX1tm2Pe5Vaz0a7ZreaGZP9ha2jx93ngsAhGEnbCGNLivWmQ0dw+vduxmCjrU37jDZyeFSz9l6zIXy9iIguvniD1t6LmkeIkrcGyzRLCEygTR4BuCnGKPlkS20C8viz7xlVomFzpTA84hZXUSeLo7wLdc0M94eOy/kqpaCxfA/SGKhA2W1plve3aIyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA3PR11MB9255.namprd11.prod.outlook.com
 (2603:10b6:208:578::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 03:07:15 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 03:07:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 06/19] drm/i915/lt_phy: Add xe3plpd .put_dplls hook
Thread-Topic: [PATCH 06/19] drm/i915/lt_phy: Add xe3plpd .put_dplls hook
Thread-Index: AQHcnOQHHa+zQBHYo0mHZcDLeaS737WJX8iQ
Date: Thu, 19 Feb 2026 03:07:15 +0000
Message-ID: <DM3PPF208195D8D682C97E5A5353F60DF6CE36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-7-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-7-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA3PR11MB9255:EE_
x-ms-office365-filtering-correlation-id: 25750385-db31-4ece-ec44-08de6f63fc27
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?lOCG7GCyxrzsPT0qH2SHexlnquizJIOhNhkDXcLHXb5VUyC7Divgftmdis/v?=
 =?us-ascii?Q?BuAI+8dZe5K9RDvmX5h0RNGTSepgqZMGGFEUQs8kH+EhC7Rkww+94o2TX1y4?=
 =?us-ascii?Q?OfTTkd4O366HPcLCHh1Ho7BngPqDm6PduyF1ycpM6GZrjWzUgk0Ab588v0nz?=
 =?us-ascii?Q?e3Iji6doUwuzu+PhWQalS4zWZtWuvdb55a+qOevZJXea6KvQWN6NhrgroUzU?=
 =?us-ascii?Q?+FMjVQEPZA/lW4cxKrlGA7I20++GiFkR/wU/18cT1GbIBlMNXwrK/yq2OkgW?=
 =?us-ascii?Q?shG1MVR6oZaKLQD7RLi0dTSTpyWE7xKsjqlVvKNSmo99IxE4YP1Dct2EIwlP?=
 =?us-ascii?Q?51Z0jiN0x0kR2IUl7eQAMkAyq5xYeO8quajD+N3wD8qp/eKPbksxHwzJk8eA?=
 =?us-ascii?Q?7VV6Ttkx5mi9rjurI+Y59s1meYR05R8b8BFYVWGweXV8gXtQP8ITANXP+L+J?=
 =?us-ascii?Q?wUVDBtoW9yGiWSVZ8ofVjImKv61fQUEt/RoWZXtW51AAYfpx6MAtClw+7JJ1?=
 =?us-ascii?Q?5/dkKcRdnq8GvbGcNaWr3NG/0Zt7213hxtsbDkpLlAjM9ntr6bS8VegdllEo?=
 =?us-ascii?Q?wPrjR3u77j6QT7xyry7lZfqW0IAmAui7UP5k2ihqfzB73kPi921a/VD/6TyV?=
 =?us-ascii?Q?xwnDEJ/fOKsjJQcZw//5SCr67KzD4EW3mTocI6lWi6+GE68vGwrz3lXTqp+Z?=
 =?us-ascii?Q?D92fBpoj9cQYmsbVTxECbhhZsaq7m0UNKEM2DMya+2JKYU3JNbpDfBa/VefA?=
 =?us-ascii?Q?5M+ONx++1XNY6dh9SV8S51G9+1LkPGneCXrQklOf4bcYkOM8+q6qAAZfGO0T?=
 =?us-ascii?Q?6V9z5wbmZK1L7TUrLL+3XgenJ7y1+x5rFv53BSlwgW+SLBvKXfmTuM6c44PS?=
 =?us-ascii?Q?vDi4yqJF4BwXJ0Nz9Gucm30gEg4LAfW0qWIM5ndqFSqWyYvFv/HILiRfj4d7?=
 =?us-ascii?Q?CPVx/zLPS9lPIGtWija/UE2JhKtFlCul5N6y6vt8Q3cdkVjIFi2T23bDq10a?=
 =?us-ascii?Q?eWFxvkFlJ7iShg24FiZqDgY7mbPY8uUt9p2w2ZrdhRnPbX9ym4kcs5Ocgexl?=
 =?us-ascii?Q?hHjuRUf9DWvSymYohPkGoUipsImRWvRpATgVZEYdXeWvM3JvZiIs6VtZ+axW?=
 =?us-ascii?Q?n076rskhWhZ+N4oAD43iynKp45NvWkE1dFk/MFg/ZtJMB5mFR4WiApRG5Vm7?=
 =?us-ascii?Q?HFwe4gQbM3tNI9wWxCcdldq3yxF018Zppqw2h0MsTpGCor0wZR/oP0gSRxnM?=
 =?us-ascii?Q?A/pJIfNBupI9+HV7Y5uP84rzK80WHsHiKqrTTFRyTPx9ZcB7WAJXYInGLgln?=
 =?us-ascii?Q?Uj4ZHcrmUAnTupqzAgAq5c0M0jJf08jlqUSbuyoaBIMi4K4AMFhawmU40UFg?=
 =?us-ascii?Q?lnCLskY6Vf852/P1IOoW3kTEAVVccod0Whnh5TtxdC8kUPYy5tpkqhZj/N6V?=
 =?us-ascii?Q?y0htDaWKt/BK2NALe5AeeqLkb9pWwolvAy7p84CErbrqJqx39AZVwKYCXxb4?=
 =?us-ascii?Q?rAs3r7gev039OTZu+YNhNN9/XSl4wwJRr0LZbUE/54H3/giTGnokqOrBQYEG?=
 =?us-ascii?Q?s7n8frsKuJUzFdJXWrv3enX7LbJPQaOSOHsg2TzhQ8FfFg6xZDqsPzom9Fja?=
 =?us-ascii?Q?HInjoWGFu4/vaSrtCcDKpDY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2GECDNTcN5SdzU8uh9h8R4j97D3JTfDyQHEDrez9NpLbpOYimYiOoakg1uAM?=
 =?us-ascii?Q?lbA+++K/Y5otmElGp0mFmKNSz51ijpiux1r0zcbMmrAH5NEJRXXxpSDJjOaI?=
 =?us-ascii?Q?arOQ6AxEAuDLsIleBdZxTvK2uVfAPTDYCFpRPTcv4+sSPcrZLkl3wRM83w3m?=
 =?us-ascii?Q?1tOF6du8WKHnfKmBdkw2LBB+VOhHclgtVeJLRvLT9dyGWSCjts/GIYHDMimo?=
 =?us-ascii?Q?VdhAcz4VJOo5FikCqx788RM5ATXtJqoeSJeWbahOcI+neo7tTI2UCYqxk8T7?=
 =?us-ascii?Q?7UWhp0Z7kZDn4+9JWP/+X+gWAXIgvSmUx7Lh6dAsPAIxClruWEnnvFcjMdcj?=
 =?us-ascii?Q?1N2oc9Yr1GmzRISHt70Ph4iaLsPw8huGAnbOs9+HbX9kqiz3rtzUr8HDgaIy?=
 =?us-ascii?Q?j9VID7q9KY+cCKvUkjgD+isU46oZtVG7T7ni9UWY6go/xI9slPqZ/8/gO26s?=
 =?us-ascii?Q?PQSLiU5VWo5t1A4GLDtEkKZ8aW1qO3OehnGKZkTbTEVYtGeqq5cGrYoSTbSD?=
 =?us-ascii?Q?NZf6hxuXVTUViZPj6I000Y7XBidWDqZJgo6ksbFGfGbSrk84imzo6X8BItVd?=
 =?us-ascii?Q?2ZD9lENCnvVGrfY2nOThgEg0wRADpBAMi2ciRk8LUxGwF5Al3NOPhGyv5bKy?=
 =?us-ascii?Q?Bhwa76CMQASyXcO3Q1T80pzvPZzxudZ4sdA8mRzO9kXeXETIx7j3pUe0Y9SX?=
 =?us-ascii?Q?bTEuF3T2vHjdY/yP6pbCDVuN8gnffmZEafHxdb/+R+23jnbIrckSKi+jcHa9?=
 =?us-ascii?Q?8gDdAQx83puEG0E0lI+qHFoxfrmywSwi2Oth+orh4ykyn+f6B7JH+Hvyo+mn?=
 =?us-ascii?Q?vYxlCGmntIddyltRGsuVc8tbTclYP55XNYgmaDq8qrb92uAwtZHM8jeQ4Aak?=
 =?us-ascii?Q?MO7J30WJruYvYAsg9JyOOAufMY8ZOVe8q/G5SVJxBenTv8+cEVQ9wmoH70p1?=
 =?us-ascii?Q?+yWcRQa7XPCDnRQEXzFzn7sGQ0q2lOsch4IfTrQ7uz3de8QWRWw99+0Y+2Tt?=
 =?us-ascii?Q?BXVdeTOqe82Ki9z/c9Ig1w8jISdEz1124hmnNP2DluphrLwlM6gmULNdTFDw?=
 =?us-ascii?Q?5piwfoR2nDdj/DfutSZj3uVuF8LzWLCVMEhH0R/N28xEUVtpviKkvpT6UlN4?=
 =?us-ascii?Q?n03OP8Xz6XhVnb270VQ0BOIM2Z4pGWl+3Ir1mhXFC4UcxJhnGCzidoIt9K+s?=
 =?us-ascii?Q?i5ju1lPT6/Gm+lsjKKuNcUUt1LOWWN+FPpwtXF0FZrQsHSGR5zyyl4Ve7GK9?=
 =?us-ascii?Q?hfugRaKLIo6ESA9Y6kkw33fUdT509eJWcJb83VsuFiri4VjCUmNLZvmAMP2+?=
 =?us-ascii?Q?PO7z4bckJrI1RTo5TcNMu5gj+7KSP00VaX8Pwg3KmxJ3jKrWEwHxdPSWjtiu?=
 =?us-ascii?Q?cr5wrqWh8aYR0EFm1RdeyIfCisluQ3fRvkKxhcX3ZK5NwilGuyqvxRrjd2TE?=
 =?us-ascii?Q?KEGVSnHsnfksDwxqZxzJh3VcFDTfEKopwicoDBhilvbCRRQs7/mF8OzFV3DY?=
 =?us-ascii?Q?a8xcZQBAkAkMNe9cnsNfD8PKeRWyKub1PGrx5h96dThozFS1DKLP5r32/AuJ?=
 =?us-ascii?Q?f7juoEKTtlCdLR8pJ13reQBEe0CwsBcZJJtOea4DNgR2hP8ng4Z5SbJacaqq?=
 =?us-ascii?Q?iJuVH2yB2ofNsG5nWazncTv/Ohu68OfpHMbJIWl2eowMlGmg0Gixg6zVGqbK?=
 =?us-ascii?Q?LwlvwnAEYj4XNO46DPQqbSNY55BY8Wuor9ROIcCe6wItHMthWnvdPmk9ulVb?=
 =?us-ascii?Q?n89RHJ4isw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25750385-db31-4ece-ec44-08de6f63fc27
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 03:07:15.5972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tO2U5Wvm80lpA4QHEKEu3O0KeYPCJ02DyAvRLsxVOtQzaSjttPyfAcbdYAk5pUpXdY3TzSf0afxy4EXxg5XFeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9255
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9989515BD30
X-Rspamd-Action: no action

> Subject: [PATCH 06/19] drm/i915/lt_phy: Add xe3plpd .put_dplls hook
>=20
> Add .put_dplls function pointer to support xe3plpd platform on dpll
> framework. Reuse ICL function pointer.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 9aa8eb0a7d4a..af2613eeaf92 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4654,6 +4654,7 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr
> =3D {
>  	.dpll_info =3D xe3plpd_plls,
>  	.compute_dplls =3D xe3plpd_compute_dplls,
>  	.get_dplls =3D mtl_get_dplls,
> +	.put_dplls =3D icl_put_dplls,
>  };
>=20
>  /**
> --
> 2.43.0

